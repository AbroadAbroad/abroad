import 'package:abroad/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:abroad/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:abroad/src/features/authentication/screens/signup/widgets/signup_header_widget.dart';
import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/signup_images/signup-screen-background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: const [
              FormHeaderWidget(
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              SizedBox(height: tFormHeight),
              SignUpFormWidget(),
              SizedBox(height: tFormHeight),
              SignUpFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}