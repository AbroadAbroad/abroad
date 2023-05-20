import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../screens/groceries_screen.dart';
import '../screens/housing_screen.dart';
import '../screens/maintenance_screen.dart';
import '../screens/transportation_screen.dart';

List<String> label = [
  'Housing',
  'Transportation',
  'Groceries',
  'Maintenance',
];
List<String> images = [
  'assets/images/img_info.svg',
  'assets/images/img_computer.svg',
  'assets/images/img_ticket.svg',
  'assets/images/img_car.svg',
];

// ignore: must_be_immutable
class EssentialsItemWidget extends StatelessWidget {
  int index;
  EssentialsItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to different screens based on the element index
        switch (index) {
          case 0:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HousingScreen(),
              ),
            );

            break;
          case 1:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TransportationScreen(),
              ),
            );

            break;
          case 2:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const GroceriesScreen(),
              ),
            );

            break;
          case 3:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MaintenanceScreen(),
              ),
            );

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
              ? 140.h
              : index == 2
                  ? 140.h
                  : 120.h,
          width: 180.w,
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
            right: 10,
            bottom: 14,
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
                width: 60.w,
              ),
              SizedBox(height: 6.h),
              FittedBox(
                child: Text(label[index],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 15.sp,
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.16.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
