import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(tWelcomeImageScreen),
          height: size.height * 0.2,
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline2),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}