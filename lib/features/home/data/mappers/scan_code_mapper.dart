import 'package:scan_qr/features/home/data/models/scan_code/scan_code_model.dart';
import 'package:scan_qr/features/home/domain/entities/scan_code.dart';

extension ScanCodeMapper on ScanCodModel {
  ScanCode get fromModel => ScanCode(
        code: data.code,
        id: data.id,
        scannerId: data.scannerId,
      );
}
