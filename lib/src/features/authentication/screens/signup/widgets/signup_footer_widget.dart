import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';
import '../../../controllers/signup_controller.dart';
import '../../login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              tAlreadyHaveAnAccount,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const LoginScreen())
                  );
                  SignUpController.instance.clearTextFields();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(175, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(
                        color: Colors.white, width: 2),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: const Text(tLogin),
              ),
            ),
          ]),
    );
  }
}