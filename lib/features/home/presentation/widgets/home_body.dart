import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_qr/core/presentation/widgets/custom_elevated_button.dart';
import 'package:scan_qr/core/utils/app_assets.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/home/presentation/cubit/home_cubit.dart';
import 'package:scan_qr/features/home/presentation/cubit/home_states.dart';
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
        BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
          // Todo Replace with real scan code later
          List<String> codes = [
            'Scan CODE No. 1',
            'Scan CODE No. 2',
            'Scan CODE No. 3',
            'Scan CODE No. 4',
            'Scan CODE No. 5',
            'Scan CODE No. 6',
          ];
          return CustomElevatedButton(
            label: AppStrings.placeCameraCode,
            isLoading: state == const HomeLoadingState(),
            onPressed: () {
              var code = codes[Random().nextInt(codes.length)];
              BlocProvider.of<HomeCubit>(context).scan(code: code);
            },
          );
        }),
      ],
    );
  }
}
