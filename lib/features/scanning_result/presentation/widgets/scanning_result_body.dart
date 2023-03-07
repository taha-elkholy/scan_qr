import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/core/presentation/widgets/custom_elevated_button.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/home/presentation/widgets/scan_title.dart';
import 'package:scan_qr/features/scanning_result/presentation/widgets/scanning_result_list.dart';

class ScanningResultBody extends StatelessWidget {
  const ScanningResultBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 35.h,
        ),
        const ScanTitle(
          title: AppStrings.scanningResult,
          description: AppStrings.scanningResultDescription,
        ),
        SizedBox(
          height: 35.h,
        ),
        const ScanningResultList(results: [
          'kuhkuh',
          'kuhkuh',
          'kuhkuh',
          'kuhkuh',
        ]),
        SizedBox(
          height: 20.h,
        ),
        CustomElevatedButton(
          label: AppStrings.send,
          onPressed: () {},
        ),
      ],
    );
  }
}
