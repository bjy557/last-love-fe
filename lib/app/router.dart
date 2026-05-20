import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/agreement/presentation/agreement_screen.dart';
import '../features/auth/application/auth_controller.dart';
import '../features/auth/application/auth_state.dart';
import '../features/auth/presentation/age_not_eligible_screen.dart';
import '../features/auth/presentation/otp_input_screen.dart';
import '../features/auth/presentation/phone_input_screen.dart';
import '../features/auth/presentation/signup_form_screen.dart';
import '../features/auth/presentation/splash_screen.dart';
import '../features/auth/presentation/welcome_screen.dart';
import '../features/location/presentation/location_permission_screen.dart';
import '../features/matches/presentation/match_list_screen.dart';
import '../features/matches/presentation/new_match_screen.dart';
import '../features/photo/presentation/photo_upload_screen.dart';
import '../features/profile_setup/presentation/profile_setup_intro_screen.dart';
import '../features/profile_setup/presentation/profile_setup_step1_screen.dart';
import '../features/swipe/presentation/card_detail_screen.dart';
import '../features/swipe/presentation/deck_screen.dart';
import '../features/swipe/presentation/preferences_screen.dart';

const _guestRoutes = <String>{
  '/splash',
  '/welcome',
  '/agreement',
  '/phone',
  '/otp',
  '/signup',
  '/signup/age-not-eligible',
};

const _profileSetupRoutes = <String>{
  '/profile-setup/intro',
  '/profile-setup/step1',
  '/profile-setup/photo',
  '/profile-setup/location',
};

/// Builds the app router and wires redirects to the auth state.
GoRouter buildAppRouter(Ref ref) {
  final refreshNotifier = _AuthRefreshNotifier(ref);
  ref.onDispose(refreshNotifier.dispose);

  return GoRouter(
    initialLocation: '/splash',
    refreshListenable: refreshNotifier,
    redirect: (context, state) {
      final auth = ref.read(authControllerProvider);
      final location = state.matchedLocation;

      if (auth.status == AuthStatus.unknown) {
        return location == '/splash' ? null : '/splash';
      }
      final isGuest = _guestRoutes.contains(location);
      final isSetup = _profileSetupRoutes.contains(location);

      if (auth.status == AuthStatus.unauthenticated) {
        if (location == '/splash') return '/welcome';
        return isGuest ? null : '/welcome';
      }

      // Authenticated.
      if (location == '/splash' ||
          location == '/welcome' ||
          location == '/agreement' ||
          location == '/phone' ||
          location == '/otp' ||
          location == '/signup') {
        return auth.profileReady ? '/swipe' : '/profile-setup/intro';
      }
      if (location == '/home') {
        return auth.profileReady ? '/swipe' : '/profile-setup/intro';
      }
      if (!auth.profileReady && location.startsWith('/swipe')) {
        return '/profile-setup/intro';
      }
      if (auth.profileReady && isSetup) {
        return '/swipe';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (_, _) => const SplashScreen()),
      GoRoute(path: '/welcome', builder: (_, _) => const WelcomeScreen()),
      GoRoute(path: '/agreement', builder: (_, _) => const AgreementScreen()),
      GoRoute(path: '/phone', builder: (_, _) => const PhoneInputScreen()),
      GoRoute(path: '/otp', builder: (_, _) => const OtpInputScreen()),
      GoRoute(path: '/signup', builder: (_, _) => const SignupFormScreen()),
      GoRoute(
        path: '/signup/age-not-eligible',
        builder: (_, _) => const AgeNotEligibleScreen(),
      ),
      GoRoute(
        path: '/profile-setup/intro',
        builder: (_, _) => const ProfileSetupIntroScreen(),
      ),
      GoRoute(
        path: '/profile-setup/step1',
        builder: (_, _) => const ProfileSetupStep1Screen(),
      ),
      GoRoute(
        path: '/profile-setup/photo',
        builder: (_, _) => const PhotoUploadScreen(),
      ),
      GoRoute(
        path: '/profile-setup/location',
        builder: (_, _) => const LocationPermissionScreen(),
      ),
      GoRoute(path: '/swipe', builder: (_, _) => const DeckScreen()),
      GoRoute(
        path: '/swipe/card/:userId',
        builder: (_, state) => CardDetailScreen(
          userId: int.parse(state.pathParameters['userId']!),
        ),
      ),
      GoRoute(
        path: '/match/new/:matchId',
        builder: (_, state) => NewMatchScreen(
          matchId: int.parse(state.pathParameters['matchId']!),
        ),
      ),
      GoRoute(path: '/matches', builder: (_, _) => const MatchListScreen()),
      GoRoute(
        path: '/preferences',
        builder: (_, _) => const PreferencesScreen(),
      ),
    ],
  );
}

/// ChangeNotifier that fires when the auth controller's state changes,
/// driving GoRouter's `refreshListenable`.
class _AuthRefreshNotifier extends ChangeNotifier {
  _AuthRefreshNotifier(Ref ref) {
    _sub = ref.listen<AuthState>(authControllerProvider, (_, _) {
      notifyListeners();
    });
  }

  late final ProviderSubscription<AuthState> _sub;

  @override
  void dispose() {
    _sub.close();
    super.dispose();
  }
}
