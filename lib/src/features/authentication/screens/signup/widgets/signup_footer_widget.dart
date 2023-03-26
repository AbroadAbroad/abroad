import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(children: [
            const TextSpan(
              text: tAlreadyHaveAnAccount,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: tLogin.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ])),
        )
      ],
    );
  }
}