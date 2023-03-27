import 'package:abroad/src/constants/sizes.dart';
import 'package:abroad/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcome_images/welcome-screen-background.png"),
              fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage("assets/images/welcome_images/welcome-screen-images.png"), height:height * 0.3 ,),
            Column(
              children: const [
                Text(
                  tWelcomeTile,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: tFormHeight - 10),
                Text(
                  tWelcomeSubTile,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                OutlinedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },

                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width:2, color: Colors.white),
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(tLogin,
                    style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 20,),
                OutlinedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                },

                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width:2, color: Colors.white),
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                    child: Text(tSignup.toUpperCase(),
                      style: const TextStyle(color: Colors.white),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
