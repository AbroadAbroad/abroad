import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../screens/emergencies_screen.dart';
import '../screens/hospitals_screen.dart';
import '../screens/medicalneeds_screen.dart';
import '../screens/pharmacies_screen.dart';

List<String> label = [
  'Hospitals',
  'Pharmacies',
  'Emergencies',
  'Medical Needs',
];
List<String> images = [
  'assets/images/img_grid.svg',
  'assets/images/img_computer_white_a700.svg',
  'assets/images/img_car_white_a700.svg',
  'assets/images/img_bag.svg',
];

// ignore: must_be_immutable
class HealthcareItemWidget extends StatelessWidget {
  int index;
  HealthcareItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to different screens based on the element index
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HospitalsScreen(),
              ),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PahrmaciesScreen(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EmergenciesScreen(),
              ),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MedicalNeedScreen(),
              ),
            );
            break;
        }
      },
      child: Container(
        height: index == 1
            ? 150.h
            : index == 2
                ? 150.h
                : 120.h,
        alignment: AlignmentDirectional.center,
        padding: const EdgeInsets.only(
          left: 15,
          top: 14,
          right: 15,
          bottom: 8,
        ).r,
        decoration: AppDecoration.outlineBluegray2003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: images[index],
              height: 60.h,
              width: 55.w,
              margin: const EdgeInsets.only(
                left: 1,
              ).r,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 11,
                bottom: 3,
              ).r,
              child: FittedBox(
                child: Text(label[index],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 15.sp,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.16.sp,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
