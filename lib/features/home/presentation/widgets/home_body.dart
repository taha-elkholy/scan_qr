import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_qr/core/presentation/widgets/custom_elevated_button.dart';
import 'package:scan_qr/core/utils/app_assets.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/home/presentation/widgets/scan_sources.dart';
import 'package:scan_qr/features/home/presentation/widgets/scan_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 35.h,
        ),
        const ScanTitle(
          title: AppStrings.scanQRCode,
          description: AppStrings.scanQRCodeDescription,
        ),
        SizedBox(
          height: 35.h,
        ),
        SvgPicture.asset(AppAssets.scanning),
        SizedBox(
          height: 4.h,
        ),
        Text(
          AppStrings.scanningCode,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: AppColors.grey,
              ),
        ),
        SizedBox(
          height: 40.h,
        ),
        const ScanSources(),
        SizedBox(
          height: 20.h,
        ),
        CustomElevatedButton(
          label: AppStrings.placeCameraCode,
          onPressed: () {},
        ),
      ],
    );
  }
}
