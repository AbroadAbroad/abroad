import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../../../../core/utils/color_constant.dart';

// ignore_for_file: must_be_immutable
class SideMenuDraweritem extends StatelessWidget {
  const SideMenuDraweritem({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: const BorderRadiusDirectional.horizontal(
            start: Radius.circular(0.0),
          ),
        ),
        backgroundColor: Colors.transparent,
        width: 290.w,
        child: Container(
            width: 290.w,
            decoration: AppDecoration.fillBluegray100f2.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR30,
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity.w,
                    child: Container(
                      width: 290.w,
                      padding: const EdgeInsets.only(
                              left: 7, top: 30, right: 7, bottom: 20)
                          .r,
                      decoration: AppDecoration.outlineBlack900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGlobeBlack900,
                                height: 30.h,
                                width: 32.w,
                                margin:
                                    const EdgeInsets.only(left: 13, top: 20).r,
                              ),
                              SizedBox(width: 20.w),
                              Padding(
                                padding: const EdgeInsets.only(top: 15).r,
                                child: Text(
                                  "Abroad",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: 19.sp,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 36, right: 7).r,
                            padding: const EdgeInsets.only(
                                    left: 13, top: 5, right: 13, bottom: 5)
                                .r,
                            decoration: AppDecoration.outlineBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIcons8search50,
                                  height: 20.h,
                                  width: 20.w,
                                  margin: const EdgeInsets.only(top: 7).r,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 59, right: 83)
                                          .r,
                                  child: Text(
                                    "Search",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray700,
                                      fontSize: 23.sp,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 23,
                      ).r,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings25x25,
                            height: 20.h,
                            width: 25.w),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 17,
                            ).r,
                            child: Text("Settings",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 21, top: 43).r,
                      child: Row(children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmark,
                          height: 20.h,
                          width: 25.w,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 17).r,
                            child: Text("Saved",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 43).r,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgInvite,
                            height: 20.h,
                            width: 25.w,
                            margin: const EdgeInsets.only(top: 1).r),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 18, bottom: 1).r,
                            child: Text("Invite",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 44).r,
                      child: Row(children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTimemachine,
                          height: 20.h,
                          width: 25.w,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 18).r,
                            child: Text("Recents",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 33).r,
                      child: Divider(
                          height: 1.h,
                          thickness: 1.sp,
                          color: ColorConstant.gray600,
                          indent: 20.sp,
                          endIndent: 35.sp)),
                  Padding(
                      padding: const EdgeInsets.only(left: 22, top: 31).r,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgInfo25x25,
                            height: 20.h,
                            width: 25.w,
                            margin: const EdgeInsets.only(top: 1).r),
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 17, bottom: 1).r,
                            child: Text("About Us",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 21, top: 41).r,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEmptyflag,
                            height: 20.h,
                            width: 25.w,
                            margin: const EdgeInsets.only(bottom: 1)),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 1,
                            ).r,
                            child: Text("Report",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ])),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 21, top: 35, bottom: 110)
                              .r,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgOnlinesupport,
                            height: 20.h,
                            width: 25.w,
                            margin: const EdgeInsets.only(bottom: 1).r),
                        Padding(
                            padding: const EdgeInsets.only(left: 16, top: 1).r,
                            child: Text("Support",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: 19.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                )))
                      ]))
                ])));
  }
}
