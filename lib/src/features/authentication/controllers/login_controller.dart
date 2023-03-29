import 'package:abroad/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/snack_bar_widget/custom_snack_bar.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation

  //Call this Function from Design & it will do the rest
  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
    if(error != null) {
      Get.showSnackbar(CustomSnackBar(message: error.toString(),));
    }
  }

  /// Clear the text fields
  void clearTextFields() {
    email.clear();
    password.clear();
  }
}
