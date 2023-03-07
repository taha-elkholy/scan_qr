import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_qr/core/utils/app_assets.dart';

class ScanSources extends StatelessWidget {
  const ScanSources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.gallery),
        SizedBox(
          width: 16.w,
        ),
        SvgPicture.asset(AppAssets.icon_5),
        SizedBox(
          width: 16.w,
        ),
        SvgPicture.asset(AppAssets.flash),
      ],
    );
  }
}
