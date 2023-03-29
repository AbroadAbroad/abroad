import 'package:abroad/src/constants/sizes.dart';
import 'package:abroad/src/constants/text_strings.dart';
import 'package:abroad/src/features/authentication/controllers/login_controller.dart';
import 'package:abroad/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:abroad/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: tDefaultSize),
                const Text(
                  tLoginTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  tLoginSubTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tDefaultSize),
                const LoginForm(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 50),
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
                        const Text(
                          tDontHaveAnAccount,
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
                                          const SignUpScreen())
                              );
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
                            child: const Text(tSignup),
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
