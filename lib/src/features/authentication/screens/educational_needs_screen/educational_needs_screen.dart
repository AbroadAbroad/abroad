import 'package:abroad/src/features/authentication/screens/educational_needs_screen/screens/co_working_spaces.dart';
import 'package:abroad/src/features/authentication/screens/educational_needs_screen/screens/libraries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../../../../core/utils/color_constant.dart';
import '../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class EducationalNeedsScreen extends StatelessWidget {
  const EducationalNeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const NotificationMenuDraweritem(),
        drawer: const SideMenuDraweritem(),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgFrameone),
                      fit: BoxFit.cover)),
              child: ListView(children: [
                CustomAppBar(
                    height: 85.h,
                    leadingWidth: 45.w,
                    leading: Builder(builder: (context) {
                      return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: CustomImageView(
                              height: 34.h,
                              width: 24.w,
                              svgPath: ImageConstant.imgVolumeWhiteA700,
                              margin: const EdgeInsets.only(
                                left: 28,
                                top: 50,
                                bottom: 15,
                              ).r));
                    }),
                    centerTitle: true,
                    title: AppbarImage(
                        height: 34.h,
                        width: 33.w,
                        svgPath: ImageConstant.imgGlobeBlack90035x34,
                        margin: const EdgeInsets.only(top: 50, bottom: 20).r),
                    actions: [
                      Builder(builder: (context) {
                        return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgNotification,
                                height: 34.h,
                                width: 33.w,
                                alignment: Alignment.topRight,
                                margin:
                                    const EdgeInsets.only(top: 53, right: 29)
                                        .r));
                      })
                    ]),
                CustomImageView(
                  svgPath: ImageConstant.imgLearningcuate,
                  height: 110.h,
                  width: 130.w,
                  margin: const EdgeInsets.only(top: 10).r,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 35).r,
                        child: Text("Education",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: 31.sp,
                                fontFamily: 'Readex Pro',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.32.sp)))),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LibrariesScreen()),
                    );
                  },
                  child: Container(
                      margin:
                          const EdgeInsets.only(left: 27, top: 13, right: 21).r,
                      padding: const EdgeInsets.only(
                        top: 29,
                        bottom: 25,
                        left: 18,
                        right: 22,
                      ).r,
                      decoration: AppDecoration.outlineBluegray2003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgTrash,
                              height: 50.h,
                              width: 70.w,
                              margin: const EdgeInsets.only(bottom: 6).r,
                            ),
                            Text("Libraries",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: 19.sp,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(width: 1.w),
                          ])),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CoWorkingSpacesScreen(),
                      ),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                              left: 27, top: 13, right: 21, bottom: 130)
                          .r,
                      padding: const EdgeInsets.only(
                              left: 18, top: 27, right: 18, bottom: 27)
                          .r,
                      decoration: AppDecoration.outlineBluegray2003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgQrcode,
                              height: 50.h,
                              width: 70.w,
                            ),
                            Text("Co-Working Spaces",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: 18.sp,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w400,
                                ))
                          ])),
                )
              ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 38, top: 110, right: 39).r,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70.h,
                          width: 32.w,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: 80.h,
                                width: 32.w,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgHome,
                                height: 24.h,
                                width: 22.w,
                                alignment: Alignment.topCenter,
                                margin: const EdgeInsets.only(
                                  top: 4,
                                ).r,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                            height: 24.h,
                            width: 22.w,
                            margin:
                                const EdgeInsets.only(top: 4, bottom: 55).r),
                        CustomImageView(
                          svgPath: ImageConstant.imgVolume,
                          height: 24.h,
                          width: 22.w,
                          margin: const EdgeInsets.only(top: 4, bottom: 55).r,
                        ),
                        CustomImageView(
                            svgPath: ImageConstant.imgProfile,
                            height: 24.h,
                            width: 22.w,
                            margin: const EdgeInsets.only(top: 4, bottom: 55).r)
                      ])))
        ]));
  }
}
