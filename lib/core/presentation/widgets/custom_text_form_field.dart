import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scan_qr/core/utils/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hint,
      this.isPassword = false,
      this.validate,
      required this.inputType})
      : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool isPassword;
  final String? Function(String?)? validate;
  final TextInputType inputType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = widget.isPassword ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58.h,
      child: TextFormField(
        controller: widget.controller,
        obscureText: _passwordVisible,
        maxLines: 1,
        keyboardType: widget.inputType,
        style: Theme.of(context).textTheme.bodyMedium,
        validator: widget.validate,
        cursorColor: AppColors.grey,
        decoration: InputDecoration(
          hintText: widget.hint,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
