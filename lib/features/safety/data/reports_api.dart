import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/safety_models.dart';

part 'reports_api.g.dart';

@RestApi()
abstract class ReportsApi {
  factory ReportsApi(Dio dio, {String? baseUrl}) = _ReportsApi;

  @POST('/api/v1/reports')
  Future<ReportResponse> create(@Body() CreateReportRequest body);
}
