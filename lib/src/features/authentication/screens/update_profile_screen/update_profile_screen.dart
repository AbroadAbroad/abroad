import 'package:abroad/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/profile_controller.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tEditProfile,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(
              tDefaultSize, tDefaultSize + 75, tDefaultSize, tDefaultSize),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/profile_images/profile_screen_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;

                  final email = TextEditingController(text: userData.email);
                  final password =
                      TextEditingController(text: userData.password);
                  final fullName =
                      TextEditingController(text: userData.fullName);
                  final phoneNo = TextEditingController(text: userData.phoneNo);

                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/profile_images/profile.png"))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue),
                              child: const Icon(
                                LineAwesomeIcons.camera,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Form(
                          key: _formKey,
                          child: Column(
                          children: [
                          TextFormField(
                            controller: fullName,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                                label: Text(tFullName),
                                prefixIcon: Icon(Icons.person_outline_rounded)),
                          ),
                          const SizedBox(height: tFormHeight - 10),
                          TextFormField(
                            controller: email,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                                label: Text(tEmail),
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          const SizedBox(height: tFormHeight - 10),
                          TextFormField(
                            controller: phoneNo,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                                label: Text(tPhoneNo),
                                prefixIcon: Icon(Icons.numbers)),
                          ),
                          const SizedBox(height: tFormHeight - 10),
                          TextFormField(
                            controller: password,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                                label: Text(tPassword),
                                prefixIcon: Icon(Icons.fingerprint)),
                          ),
                          const SizedBox(height: tFormHeight),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () async {
                                final userData = UserModel(
                                  email: email.text.trim(),
                                  password: password.text.trim(),
                                  fullName: fullName.text.trim(),
                                  phoneNo: phoneNo.text.trim(),
                                );

                                await controller.updateRecord(userData);
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(175, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: const BorderSide(
                                      color: Colors.white, width: 2),
                                ),
                                backgroundColor: Colors.transparent,
                              ),
                              child: const Text(tEditProfile,
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ))
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text('Something went wrong'));
                }
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
