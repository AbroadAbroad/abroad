import 'package:abroad/screens/home_screen.dart';
import 'package:abroad/reusable_widgets/reusable_widget.dart';
import 'package:abroad/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/signup_screen_background.png"),
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
                      "New Account",
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
                      "Sign Up and get started",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 75,
                          width: 320,
                          child: reusableTextField("Username", Icons.person_outline, false, _userNameTextController),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                      width: 320,
                      child: reusableTextField("Password", Icons.lock_outline, true, _passwordTextController),
                      ),
                    ),
                  const SizedBox(height: 50),

                  Center(
                    child: signInSignUpButton(context, false, (){
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text).then((value){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    })
                  ),
                  const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        const SizedBox(height: 50),
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
                        signInSignUpButton(context, true, (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const SignInScreen()));
                        }),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return 'Email address is required.';

    return null;
}