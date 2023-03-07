// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanCodModel _$ScanCodModelFromJson(Map<String, dynamic> json) => ScanCodModel(
      status: json['status'] as int,
      data: CodeData.fromJson(json['data'] as Map<String, dynamic>),
      massage: json['massage'] as String,
    );

Map<String, dynamic> _$ScanCodModelToJson(ScanCodModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'massage': instance.massage,
    };

CodeData _$CodeDataFromJson(Map<String, dynamic> json) => CodeData(
      code: json['code'] as String,
      id: json['id'] as int,
      scannerId: json['scanner_id'] as int,
    );

Map<String, dynamic> _$CodeDataToJson(CodeData instance) => <String, dynamic>{
      'code': instance.code,
      'id': instance.id,
      'scanner_id': instance.scannerId,
    };
