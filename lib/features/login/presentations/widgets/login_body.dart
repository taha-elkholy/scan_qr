import 'package:flutter/material.dart';
import 'package:scan_qr/features/login/presentations/widgets/login_form.dart';
import 'package:scan_qr/features/login/presentations/widgets/login_header.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LoginHeader(),
        Column(
          children: const [
            Spacer(),
            LoginForm(),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
