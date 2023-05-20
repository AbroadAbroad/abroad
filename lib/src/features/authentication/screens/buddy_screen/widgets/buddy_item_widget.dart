import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/color_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
List<String> label = [
  'Request',
  'Contact your Buddy',
  'Volunteer',
  'Report',
];
List<String> images = [
  'assets/images/img_cut_white_a700.svg',
  'assets/images/img_location_white_a700.svg',
  'assets/images/img_location_white_a700_75x75.svg',
  'assets/images/img_television_white_a700.svg',
];

// ignore: must_be_immutable
class BuddyItemWidget extends StatelessWidget {
  int index;
  BuddyItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: index == 1 ? 140.h : 120.h,
      padding: const EdgeInsets.only(
        left: 5,
        top: 13,
        right: 5,
        bottom: 13,
      ).r,
      decoration: AppDecoration.outlineBluegray2003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: images[index],
            height: 65.h,
            width: 65.w,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 4,
            ).r,
            child: Center(
              child: Text(label[index],
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: 11.sp,
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
