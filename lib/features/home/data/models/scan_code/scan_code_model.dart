import 'package:json_annotation/json_annotation.dart';

part 'scan_code_model.g.dart';

@JsonSerializable()
class ScanCodModel {
  final int status;
  final CodeData data;
  final String massage;

  const ScanCodModel({
    required this.status,
    required this.data,
    required this.massage,
  });

  factory ScanCodModel.fromJson(Map<String, dynamic> json) =>
      _$ScanCodModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScanCodModelToJson(this);
}

@JsonSerializable()
class CodeData {
  final String code;
  final int id;
  @JsonKey(name: 'scanner_id')
  final int scannerId;

  const CodeData({
    required this.code,
    required this.id,
    required this.scannerId,
  });

  factory CodeData.fromJson(Map<String, dynamic> json) =>
      _$CodeDataFromJson(json);

  Map<String, dynamic> toJson() => _$CodeDataToJson(this);
}
