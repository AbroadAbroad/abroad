import 'package:abroad/src/features/authentication/screens/entertainment_screen/screens/entertainment_screen.dart';
import 'package:abroad/src/features/authentication/screens/entertainment_screen/screens/malls_screen.dart';
import 'package:abroad/src/features/authentication/screens/entertainment_screen/screens/tourism_screen.dart';
import 'package:abroad/src/features/authentication/screens/entertainment_screen/screens/trips_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../screens/cafe_screen.dart';
import '../screens/restaurant_screen.dart';

List<String> label = [
  'Restaurants',
  'Malls',
  'Cafés',
  'Entertainment',
  'Tourism',
  'Trips',
];
List<String> images = [
  'assets/images/img_settings_white_a700.svg',
  'assets/images/img_calculator.svg',
  'assets/images/img_television.svg',
  'assets/images/img_cut.svg',
  'assets/images/img_upload.svg',
  'assets/images/img_globesvgrepocom.svg',
];

// ignore: must_be_immutable
class EntertainmentItemWidget extends StatelessWidget {
  int index;
  EntertainmentItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RestaurantScreen(),
              ),
            );
            break;
          case 1:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MallsScreen(),
              ),
            );
            break;
          case 2:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CafeScreen(),
              ),
            );
            break;
          case 3:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EntertainmentSupScreen(),
              ),
            );
            break;
          case 4:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TripsScreen(),
              ),
            );
            break;
          case 5:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TourismScreen(),
              ),
            );
            break;
        }
      },
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: index == 1 ? 140.h : 128.h,
          padding: const EdgeInsets.only(
            left: 15,
            top: 10,
            right: 15,
            bottom: 10,
          ).r,
          decoration: AppDecoration.outlineBluegray2003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: images[index],
                height: 70.h,
                width: 70.w,
                alignment: Alignment.centerRight,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                  bottom: 20,
                ).r,
                child: FittedBox(
                  child: Text(
                    label[index],
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 15.sp,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
