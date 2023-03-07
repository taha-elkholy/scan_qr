import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/features/scanning_result/presentation/widgets/scan_result_item.dart';

class ScanningResultList extends StatelessWidget {
  const ScanningResultList({
    Key? key,
    required this.results,
  }) : super(key: key);
  final List<String> results;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        primary: false,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: results.length,
        separatorBuilder: (context, _) => SizedBox(
              height: 8.h,
            ),
        itemBuilder: (context, index) => ScanResultItem(
              title: results[index],
            ));
  }
}
