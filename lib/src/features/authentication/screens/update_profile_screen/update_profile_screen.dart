import 'package:abroad/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  UserModel user = snapshot.data as UserModel;
                  //controllers
                  final id = TextEditingController(text: user.id);
                  final email = TextEditingController(text: user.email);
                  final password = TextEditingController(text: user.password);
                  final fullName = TextEditingController(text: user.fullName);
                  final phoneNo = TextEditingController(text: user.phoneNo);

                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120.w,
                            height: 120.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage(
                                  "assets/images/profile_images/profile.png",
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35.w,
                              height: 35.h,
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
                      SizedBox(height: 25.h),
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
                                    prefixIcon:
                                        Icon(Icons.person_outline_rounded)),
                              ),
                              SizedBox(height: tFormHeight - 10.h),
                              TextFormField(
                                controller: email,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: const InputDecoration(
                                    label: Text(tEmail),
                                    prefixIcon: Icon(Icons.email_outlined)),
                              ),
                              SizedBox(height: tFormHeight - 10.h),
                              TextFormField(
                                controller: phoneNo,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: const InputDecoration(
                                    label: Text(tPhoneNo),
                                    prefixIcon: Icon(Icons.numbers)),
                              ),
                              SizedBox(height: tFormHeight - 10.h),
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
                                width: 200.w,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    final userData = UserModel(
                                      id: id.text,
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
