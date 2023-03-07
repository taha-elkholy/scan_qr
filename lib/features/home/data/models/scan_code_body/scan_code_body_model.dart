import 'package:json_annotation/json_annotation.dart';

part 'scan_code_body_model.g.dart';

@JsonSerializable()
class ScanCodeBodyModel {
  final String code;

  const ScanCodeBodyModel({
    required this.code,
  });

  factory ScanCodeBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ScanCodeBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScanCodeBodyModelToJson(this);
}
