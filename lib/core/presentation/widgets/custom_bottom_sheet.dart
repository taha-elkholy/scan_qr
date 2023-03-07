import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_qr/core/utils/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
    required this.actionAssetName,
    required this.onActionPressed,
    required this.child,
  }) : super(key: key);
  final String actionAssetName;
  final VoidCallback onActionPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        minChildSize: 0.5,
        builder: (BuildContext context, ScrollController scrollController) {
          var width = MediaQuery.of(context).size.width;
          return DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                )),
            child: ListView(
              controller: scrollController,
              padding: EdgeInsets.all(20.w),
              children: [
                Divider(
                  color: AppColors.grey,
                  thickness: 5,
                  endIndent: width * 0.35,
                  indent: width * 0.35,
                ),
                InkWell(
                  onTap: onActionPressed,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: SvgPicture.asset(
                      actionAssetName,
                    ),
                  ),
                ),
                child
              ],
            ),
          );
        },
      ),
    );
  }
}
