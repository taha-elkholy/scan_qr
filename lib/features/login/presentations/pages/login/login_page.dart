import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scan_qr/config/di/injectable.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_cubit.dart';
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_states.dart';
import 'package:scan_qr/features/login/presentations/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginStates>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (_) => Navigator.pushReplacementNamed(
              context,
              AppRoutes.homePageRout,
            ),
            error: (errorMessage) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
              ),
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(),
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          body: const LoginBody(),
        ),
      ),
    );
  }
}
