import 'package:scan_qr/features/home/data/models/scan_code_body/scan_code_body_model.dart';

extension ScanBodyMapper on String {
  ScanCodeBodyModel get toModel => ScanCodeBodyModel(
        code: this,
      );
}
