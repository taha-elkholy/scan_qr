import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scan_qr/core/utils/app_assets.dart';

class ScanResultItem extends StatelessWidget {
  const ScanResultItem({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57.h,
      child: Card(
        child: ListTile(
          leading: SvgPicture.asset(AppAssets.file),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
