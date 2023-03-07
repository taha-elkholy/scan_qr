import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scan_qr/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:scan_qr/core/utils/app_assets.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/features/scanning_result/presentation/widgets/scanning_result_body.dart';

class ScanningResultPage extends StatelessWidget {
  const ScanningResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: CustomBottomSheet(
        actionAssetName: AppAssets.play,
        onActionPressed: () {
          Navigator.pop(context);
        },
        child: const ScanningResultBody(),
      ),
    );
  }
}
