import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/reports_api.dart';
import '../domain/safety_enums.dart';
import '../domain/safety_models.dart';

part 'report_controller.g.dart';

@riverpod
class ReportController extends _$ReportController {
  @override
  AsyncValue<ReportResponse?> build() => const AsyncValue.data(null);

  Future<ReportResponse?> submit({
    required int reportedUserId,
    required ReportReason reason,
    String? description,
    int? chatMessageId,
  }) async {
    state = const AsyncValue.loading();
    final api = ReportsApi(ref.read(apiDioProvider));
    try {
      final res = await api.create(CreateReportRequest(
        reportedUserId: reportedUserId,
        reason: reason,
        description: description?.trim().isEmpty == true
            ? null
            : description?.trim(),
        chatMessageId: chatMessageId,
      ));
      state = AsyncValue.data(res);
      return res;
    } on Object catch (e, s) {
      state = AsyncValue.error(e, s);
      rethrow;
    }
  }
}
