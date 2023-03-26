import 'package:abroad/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.textAlign,
  }) : super(key: key);

  //Variables -- Declared in Constructor
  final String title, subTitle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: tFormHeight),
        Text(title, style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold, )),
        Text(subTitle, textAlign: textAlign, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}