import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomSnackBar extends GetSnackBar {
  CustomSnackBar({
    required String message,
    IconData? icon,
  }) : super(
          message: message,
          snackStyle: SnackStyle.FLOATING,
          duration: const Duration(seconds: 2),
          borderRadius: 10,
          margin: const EdgeInsets.all(15),
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: Icon(
              icon ?? Icons.error,
              color: Colors.red,
            ),
          ),
        );
}

