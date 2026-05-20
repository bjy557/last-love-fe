import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../../auth/application/auth_controller.dart';
import '../../auth/domain/auth_enums.dart';
import '../data/profile_api.dart';
import '../domain/profile_models.dart';

part 'profile_setup_controller.g.dart';

/// Local scratch state for the stage-1 wizard. Fields are flushed to the BE
/// in a single PATCH at the end of step1 to minimise network chatter.
class ProfileSetupDraft {
  const ProfileSetupDraft({
    this.maritalStatus,
    this.hasChildren,
    this.relationshipIntent,
    this.bio,
  });

  final MaritalStatus? maritalStatus;
  final HasChildren? hasChildren;
  final RelationshipIntent? relationshipIntent;
  final String? bio;

  ProfileSetupDraft copyWith({
    MaritalStatus? maritalStatus,
    HasChildren? hasChildren,
    RelationshipIntent? relationshipIntent,
    String? bio,
  }) =>
      ProfileSetupDraft(
        maritalStatus: maritalStatus ?? this.maritalStatus,
        hasChildren: hasChildren ?? this.hasChildren,
        relationshipIntent: relationshipIntent ?? this.relationshipIntent,
        bio: bio ?? this.bio,
      );

  bool get isComplete =>
      maritalStatus != null &&
      hasChildren != null &&
      relationshipIntent != null &&
      bio != null &&
      bio!.trim().length >= 30;

  UpdateProfileRequest toRequest() => UpdateProfileRequest(
        maritalStatus: maritalStatus,
        hasChildren: hasChildren,
        relationshipIntent: relationshipIntent,
        bio: bio,
      );
}

@Riverpod(keepAlive: false)
class ProfileSetupController extends _$ProfileSetupController {
  @override
  ProfileSetupDraft build() => const ProfileSetupDraft();

  void setMarital(MaritalStatus value) =>
      state = state.copyWith(maritalStatus: value);
  void setChildren(HasChildren value) =>
      state = state.copyWith(hasChildren: value);
  void setIntent(RelationshipIntent value) =>
      state = state.copyWith(relationshipIntent: value);
  void setBio(String value) => state = state.copyWith(bio: value);

  Future<ProfileResponse> submitStage1() async {
    if (!state.isComplete) {
      throw StateError('profile draft incomplete');
    }
    final api = ProfileApi(ref.read(apiDioProvider));
    final body = state.toRequest().toSparseJson();
    final profile = await api.update(body);
    return profile;
  }

  /// Hits PUT location with a single fix.
  Future<void> submitLocation(double latitude, double longitude) async {
    final api = ProfileApi(ref.read(apiDioProvider));
    await api.updateLocation(UpdateLocationRequest(
      latitude: latitude,
      longitude: longitude,
    ));
    ref.read(authControllerProvider.notifier).markProfileReady();
  }

  Future<void> skipLocation() async {
    ref.read(authControllerProvider.notifier).markProfileReady();
  }
}
