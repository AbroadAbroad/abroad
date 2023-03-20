import 'package:abroad/pages/home_screen.dart';
import 'package:abroad/reusable_widgets/reusable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/signup_screen_background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "New Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Sign Up and get started",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 320,
                        child: reusableTextField("Username", Icons.person_outline, false, _userNameTextController),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 320,
                    child: reusableTextField("Email Address", Icons.person_outline, false, _emailTextController),
                    ),
                  ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 320,
                    child: reusableTextField("Password", Icons.lock_outline, false, _passwordTextController),
                    ),
                  ),
                SizedBox(height: 50),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                          .then((value) {
                            print("Created New Account");
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(320, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.facebook),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.twitter),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.instagram),
                            color: Colors.white,
                            iconSize: 40,
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Sign In"),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(320, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.white, width: 2),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      );
  }
}
