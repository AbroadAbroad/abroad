import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_constant.dart';
import '../../../../../core/utils/image_constant.dart';
import '../../../../../theme/app_decoration.dart';
import '../../../../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class NotificationMenuDraweritem extends StatelessWidget {
  const NotificationMenuDraweritem({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: const BorderRadiusDirectional.horizontal(
            start: Radius.circular(0.0),
          ),
        ),
        width: 290.w,
        backgroundColor: Colors.transparent,
        child: Container(
            width: 290.w,
            padding:
                const EdgeInsets.only(left: 29, top: 53, right: 29, bottom: 53)
                    .r,
            decoration: AppDecoration.fillBluegray100f2.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 60).r,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, bottom: 6)
                                          .r,
                                  child: Text("Notifications",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: 19.sp,
                                        fontFamily: 'Lexend',
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgNotificationBlack900,
                                    height: 35.h,
                                    width: 35.w,
                                    margin: const EdgeInsets.only(left: 12).r)
                              ]))),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 354).r,
                    child: Text("No Notifications Yet!",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: 19.sp,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w700,
                        )),
                  )
                ])));
  }
}
