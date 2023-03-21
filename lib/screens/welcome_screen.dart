import 'package:abroad/screens/signin_screen.dart';
import 'package:abroad/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: Transform.translate(
                  offset: Offset(0, -50),
                  child: Center(
                    child: Image.asset(
                      "images/top_image.png",
                      fit: BoxFit.fitHeight,
                      height: 200,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Transform.translate(
                offset: Offset(0, -20),
                child: const Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Transform.translate(
                offset: Offset(0, -30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Log in with the data you entered \nduring the registration.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (context) => SignInScreen()),
                        );
                      },
                      child: Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
