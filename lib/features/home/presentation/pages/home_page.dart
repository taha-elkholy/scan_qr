import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:scan_qr/core/utils/app_assets.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/features/home/presentation/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        actionAssetName: AppAssets.scanAction1,
        onActionPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.scanningResultsPageRout);
        },
        child: const HomeBody(),
      ),
    );
  }
}
