import 'package:json_annotation/json_annotation.dart';

/// Converts a Dart `DateTime` to/from a `yyyy-MM-dd` string for fields that
/// the BE declares as `format: date` (e.g. `birthDate`).
///
/// Required because freezed/json_serializable defaults to
/// `DateTime.toIso8601String()` which the BE rejects.
class LocalDateConverter implements JsonConverter<DateTime, String> {
  const LocalDateConverter();

  @override
  DateTime fromJson(String json) {
    // Accept both `yyyy-MM-dd` and full ISO-8601 (`...T00:00:00Z`).
    if (json.length == 10) {
      final parts = json.split('-');
      return DateTime(
        int.parse(parts[0]),
        int.parse(parts[1]),
        int.parse(parts[2]),
      );
    }
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    final y = object.year.toString().padLeft(4, '0');
    final m = object.month.toString().padLeft(2, '0');
    final d = object.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }
}
