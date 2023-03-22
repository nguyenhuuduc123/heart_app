import 'package:codingwithme/src/constants/image_strings.dart';
import 'package:codingwithme/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [Image(image: AssetImage(tWelcomeImageScreen))],
            )),
      ),
    );
  }
}
