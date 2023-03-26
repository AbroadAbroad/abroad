import 'package:abroad/src/constants/sizes.dart';
import 'package:abroad/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcome_images/welcome-screen-background.png"),
              fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage("assets/images/welcome_images/welcome-screen-images.png"), height:height * 0.3 ,),
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
                OutlinedButton(onPressed: (){},
                  child: Text(tLogin.toUpperCase(),
                    style: TextStyle(color: Colors.white),),

                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width:2, color: Colors.white),
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                OutlinedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                    child: Text(tSignup.toUpperCase(),
                      style: const TextStyle(color: Colors.white),),

                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width:2, color: Colors.white),
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
