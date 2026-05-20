import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/auth_api.dart';
import '../domain/auth_enums.dart';
import '../domain/auth_models.dart';
import 'auth_controller.dart';
import 'signup_flow_controller.dart';

part 'signup_controller.g.dart';

@Riverpod(keepAlive: false)
class SignupController extends _$SignupController {
  @override
  AsyncValue<AuthSession?> build() => const AsyncValue.data(null);

  AuthApi get _api => AuthApi(ref.read(apiDioProvider));

  Future<AuthSession> submit({
    required String displayName,
    required DateTime birthDate,
    required Gender gender,
  }) async {
    final flow = ref.read(signupFlowControllerProvider);
    final verifiedToken = flow.verifiedToken;
    final agreements = flow.agreements;
    if (verifiedToken == null || agreements == null) {
      throw StateError('verifiedToken or agreements missing - flow invalid');
    }
    state = const AsyncValue.loading();
    try {
      final session = await _api.signup(SignupRequest(
        verifiedToken: verifiedToken,
        displayName: displayName,
        birthDate: birthDate,
        gender: gender,
        agreements: agreements,
      ));
      await ref
          .read(authControllerProvider.notifier)
          .applySession(session, profileReady: false);
      ref.read(signupFlowControllerProvider.notifier).reset();
      state = AsyncValue.data(session);
      return session;
    } on Object catch (e, s) {
      state = AsyncValue.error(e, s);
      rethrow;
    }
  }

  /// Existing user branch: confirm response said `userExists=true`.
  Future<AuthSession> login() async {
    final flow = ref.read(signupFlowControllerProvider);
    final verifiedToken = flow.verifiedToken;
    if (verifiedToken == null) {
      throw StateError('verifiedToken missing');
    }
    state = const AsyncValue.loading();
    try {
      final session = await _api.login(LoginRequest(verifiedToken: verifiedToken));
      await ref
          .read(authControllerProvider.notifier)
          .applySession(session, profileReady: true);
      ref.read(signupFlowControllerProvider.notifier).reset();
      state = AsyncValue.data(session);
      return session;
    } on Object catch (e, s) {
      state = AsyncValue.error(e, s);
      rethrow;
    }
  }
}
