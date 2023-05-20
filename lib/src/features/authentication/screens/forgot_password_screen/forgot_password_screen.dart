import 'package:abroad/src/constants/sizes.dart';
import 'package:abroad/src/constants/text_strings.dart';
import 'package:abroad/src/features/authentication/controllers/login_controller.dart';
import 'package:abroad/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'forgot_password_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(tDefaultSize),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/signin_images/signin_screen_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: tDefaultSize),
                const Text(
                  tForgotPasswordTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: tDefaultSize + 30),
                const Text(
                  tForgotPasswordSubTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tDefaultSize),
                const ForgotPasswordForm(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 150),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.facebook),
                          color: Colors.white,
                          iconSize: 40,
                        ),
                        const SizedBox(width: 30),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.twitter),
                          color: Colors.white,
                          iconSize: 40,
                        ),
                        const SizedBox(width: 30),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.instagram),
                          color: Colors.white,
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: tDefaultSize + 20),
                Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                              LoginController.instance.clearTextFields();
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
                            child: const Text(tBackToLogin),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
