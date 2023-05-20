import 'package:abroad/src/features/authentication/screens/profile/widgets/profile_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../repository/authentication_repository/authentication_repository.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../update_profile_screen/update_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          tProfile,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 110.w,
                    height: 120.h,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100).r,
                        child: const Image(
                            image: AssetImage(
                                "assets/images/profile_images/profile.png"))),
                  ),
                ],
              ),

              Text(
                tProfileSubHeading,
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 18.h),

              /// -- BUTTON
              SizedBox(
                width: 200.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateProfileScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(tEditProfile,
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(height: 10),

              /// -- MENU
              ProfileMenuWidget(
                  title: "Settings",
                  icon: LineAwesomeIcons.cog,
                  textColor: Colors.white,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Billing Details",
                  icon: LineAwesomeIcons.wallet,
                  textColor: Colors.white,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "User Management",
                  icon: LineAwesomeIcons.user_check,
                  textColor: Colors.white,
                  onPress: () {}),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Information",
                  icon: LineAwesomeIcons.info,
                  textColor: Colors.white,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    Get.defaultDialog(
                      title: "LOGOUT",
                      titleStyle: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      content: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        child: Text(
                          "Are you sure, you want to Logout?",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      confirm: Expanded(
                        child: ElevatedButton(
                          onPressed: () =>
                              AuthenticationRepository.instance.logout(),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              side: BorderSide.none),
                          child: const Text("Yes"),
                        ),
                      ),
                      cancel: OutlinedButton(
                          onPressed: () => Get.back(), child: const Text("No")),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
