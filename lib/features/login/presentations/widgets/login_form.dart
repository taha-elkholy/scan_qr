import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/config/routes/app_routes.dart';
import 'package:scan_qr/core/presentation/widgets/custom_elevated_button.dart';
import 'package:scan_qr/core/presentation/widgets/custom_text_form_field.dart';
import 'package:scan_qr/core/utils/app_colors.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_cubit.dart';
import 'package:scan_qr/features/login/presentations/cubit/login_cubit/login_states.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> _formKey;

  late TextEditingController _phoneController;

  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextFormField(
              controller: _phoneController,
              hint: AppStrings.phoneHint,
              inputType: TextInputType.phone,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return AppStrings.phoneValidation;
                }
                return null;
              },
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomTextFormField(
              controller: _passwordController,
              hint: AppStrings.passwordHint,
              inputType: TextInputType.visiblePassword,
              isPassword: true,
              validate: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return AppStrings.passwordValidation;
                }
                return null;
              },
            ),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                AppStrings.forgotPassword,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGrey,
                    ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            BlocBuilder<LoginCubit, LoginStates>(builder: (context, state) {
              return CustomElevatedButton(
                label: AppStrings.loginTitle,
                isLoading: state == const LoginStates.loading(),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.homePageRout,
                  );

                  // if (_formKey.currentState!.validate()) {
                  //   FocusManager.instance.primaryFocus?.unfocus();
                  //   BlocProvider.of<LoginCubit>(context).login(
                  //     loginParam: LoginParam(
                  //       email: _phoneController.text,
                  //       password: _passwordController.text,
                  //     ),
                  //   );
                  // }
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
