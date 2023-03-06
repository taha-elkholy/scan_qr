import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/login/presentations/pages/widgets/login_background.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const LoginBackground(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 32.h),
            child: Text(
              AppStrings.loginTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
