import 'package:abroad/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                prefixIconColor: Colors.white,
                labelText: tEmail,
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                prefixIconColor: Colors.white,
                labelText: tPassword,
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                suffixIcon: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight -30,),
            Align(alignment: Alignment.centerRight, child: TextButton(
                onPressed: (){},
                child: const Text(
                    tForgetPassword,
                style: TextStyle(
                    color: Colors.white,
                fontSize: 12),
                )
              ),
            ),
            const SizedBox(height: tDefaultSize),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                child: const Text(tLogin),
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
          ],
        ),
      ),
    );
  }
}
