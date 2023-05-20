import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../educational_needs_screen/educational_needs_screen.dart';
import '../../entertainment_screen/entertainment_screen.dart';
import '../../essentials_screen/essentials_screen.dart';
import '../../healthcare_screen/healthcare_screen.dart';

List<String> label = [
  'Essentials',
  'Healthcare',
  'Education',
  'Entertainment',
];
List<String> images = [
  'assets/images/img_clock_white_a700.svg',
  'assets/images/img_minimize.svg',
  'assets/images/img_arrowdown.svg',
  'assets/images/img_clock_white_a700_75x75.svg',
];

// ignore: must_be_immutable
class MainScreenItemWidget extends StatelessWidget {
  int index;
  MainScreenItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to different screens based on the element index
          switch (index) {
            case 0:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EssentialsScreen(),
              ));

              break;
            case 1:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HealthcareScreen(),
              ));

              break;
            case 2:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EducationalNeedsScreen(),
              ));

              break;
            case 3:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EntertainmentScreen(),
              ));

              break;
          }
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: const EdgeInsets.all(0).r,
          color: ColorConstant.whiteA70026,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorConstant.blueGray2003f,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(12).r,
          ),
          child: Container(
              height: index == 1
                  ? 150.h
                  : index == 2
                      ? 150.h
                      : 125.h,
              padding: EdgeInsets.only(
                left: 18.r,
                top: index == 1
                    ? 35.r
                    : index == 2
                        ? 35.r
                        : 20.r,
                right: 15.r,
                bottom: 9.r,
              ),
              decoration: AppDecoration.outlineBluegray2003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: images[index],
                      height: 60.h,
                      width: 70.w,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 6,
                          bottom: 10,
                        ).r,
                        child: FittedBox(
                          child: Text(label[index],
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: 15.sp,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.16.sp)),
                        ))
                  ])),
        ));
  }
}
