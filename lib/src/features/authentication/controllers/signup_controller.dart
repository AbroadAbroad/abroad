import 'package:abroad/models/user_model.dart';
import 'package:abroad/repository/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../repository/authentication_repository/authentication_repository.dart';
import '../../../common_widgets/snack_bar_widget/custom_snack_bar.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  final userRepo = Get.put(UserRepository());

  Future<bool> registerUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(CustomSnackBar(message: error.toString(),));
      return false;
    }
    return true;
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }

  void clearTextFields() {
    email.clear();
    password.clear();
    fullName.clear();
    phoneNo.clear();
  }
}
