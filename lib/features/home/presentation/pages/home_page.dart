import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scan_qr/config/di/injectable.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:scan_qr/core/utils/app_assets.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/features/home/presentation/cubit/home_cubit.dart';
import 'package:scan_qr/features/home/presentation/cubit/home_states.dart';
import 'package:scan_qr/features/home/presentation/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocListener<HomeCubit, HomeStates>(
        listener: (context, state) {
          state.whenOrNull(
              loaded: (code) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Your Code is ${code.code}'),
                    ),
                  ),
              error: (errorMessage) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(errorMessage),
                    ),
                  ));
        },
        child: Scaffold(
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
              Navigator.of(context)
                  .pushNamed(AppRoutes.scanningResultsPageRout);
            },
            child: const HomeBody(),
          ),
        ),
      ),
    );
  }
}
