import 'package:abroad/screens/home_screen.dart';
import 'package:abroad/reusable_widgets/reusable_widget.dart';
import 'package:abroad/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/welcome_screen_background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Sign In and get started",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: SizedBox(
                    height: 75,
                    width: 320,
                    child: reusableTextField("Email Address", Icons.email_outlined, false, _emailTextController),
                    ),
                  ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 75,
                    width: 320,
                    child: reusableTextField("Password", Icons.lock_outline, true, _passwordTextController),
                    ),
                  ),
                const SizedBox(height: 50),

                signInSignUpButton(context, true, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                  });
                }),

                const SizedBox(height: 50),
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
                      const SizedBox(height: 20),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:Colors.white,
                              width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text("OR",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      signInSignUpButton(context, false, (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()));
                      }),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
}
