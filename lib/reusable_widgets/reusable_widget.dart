import 'package:flutter/material.dart';



TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField (
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(
          fontSize: 12,
          color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white70,),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
    ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      );
}


Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
   return Container(
    decoration: BoxDecoration (borderRadius: BorderRadius.circular(90)),
     child: Center(
       child: ElevatedButton(
        onPressed: () {
          onTap();
        },
         child: Text(
          isLogin ? 'LOG IN' : 'SIGN UP',
          ),
         style: ElevatedButton.styleFrom(
           minimumSize: const Size(320, 50),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(30),
             side: const BorderSide(color: Colors.white, width: 2),
           ),
           backgroundColor: Colors.transparent,
         ),
       ),
     ),
   );
}