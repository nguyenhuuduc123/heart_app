import 'package:codingwithme/src/constants/sizes.dart';

import 'package:codingwithme/src/features/authentication/screens/login_screen/login_screen._widget/login_header_widget.dart';
import 'package:flutter/material.dart';

import 'login_screen._widget/login_footer_widget.dart';
import 'login_screen._widget/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeaderWidget(size: size),
              const LoginForm(),
              const LoginFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
