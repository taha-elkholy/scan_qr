import 'package:flutter/material.dart';
import 'package:scan_qr/features/login/presentations/pages/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: const LoginBody(),
    );
  }
}
