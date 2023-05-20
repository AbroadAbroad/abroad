import 'package:abroad/src/constants/sizes.dart';
import 'package:abroad/src/constants/text_strings.dart';
import 'package:abroad/src/features/authentication/controllers/login_controller.dart';
import 'package:abroad/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

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
                  tVerificationTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: tDefaultSize + 30),
                 const Text(
                  tVerificationSubTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: tDefaultSize),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 50),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      textStyle: const TextStyle(color: Colors.white),
                      length: 4,
                      obscureText: true,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedFillColor: Colors.transparent,
                        selectedColor: Colors.white,
                        inactiveFillColor: Colors.transparent,
                        inactiveColor: Colors.white,
                        activeColor: Colors.white,
                        activeFillColor: Colors.transparent,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        debugPrint(value);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: tDefaultSize),
                Center(
                  child: SizedBox(
                    width: 220,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child:  const Text(tSubmit),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: tDefaultSize + 150),
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
                              Navigator.pushReplacement(
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

void setState(Null Function() param0) {}
