import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../../core/utils/color_constant.dart';
import '../../../../../core/utils/image_constant.dart';
import '../../../../../theme/app_decoration.dart';
import '../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../buddy_screen/buddy_screen.dart';
import '../main_screen/widgets/main_screen_item_widget.dart';
import '../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../profile/profile_screen.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NotificationMenuDraweritem(),
      drawer: const SideMenuDraweritem(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity.h,
            height: double.infinity.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgFrameone,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: ListView(
              children: [
                CustomAppBar(
                  height: 80.h,
                  leadingWidth: 45.w,
                  leading: Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CustomImageView(
                          height: 35.h,
                          width: 35.w,
                          svgPath: ImageConstant.imgVolumeWhiteA700,
                          margin: const EdgeInsets.only(
                            left: 28,
                            top: 53,
                          ).r,
                        ),
                      );
                    },
                  ),
                  centerTitle: true,
                  title: AppbarImage(
                    height: 30.h,
                    width: 30.w,
                    svgPath: ImageConstant.imgGlobe,
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                    ).r,
                  ),
                  actions: [
                    Builder(
                      builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: CustomImageView(
                            svgPath: ImageConstant.imgNotification,
                            height: 30.h,
                            width: 30.w,
                            alignment: Alignment.topRight,
                            margin: const EdgeInsets.only(
                              top: 53,
                              right: 29,
                            ).r,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                  ).r,
                  child: Text(
                    "Hey!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 23.sp,
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 21,
                  ).r,
                  child: Text("Categories",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: 19.sp,
                        letterSpacing: 0.5.sp,
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 5,
                    left: 15,
                    right: 15,
                  ).r,
                  child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    itemCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    staggeredTileBuilder: (context) =>
                        const StaggeredTile.fit(1),
                    itemBuilder: (context, index) {
                      return MainScreenItemWidget(
                        index: index,
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BuddyScreen(),
                    ));
                  },
                  child: Container(
                    height: 90.h,
                    width: double.infinity.w,
                    margin: const EdgeInsets.only(
                      top: 2,
                      right: 8,
                      left: 8,
                      bottom: 25,
                    ).r,
                    padding: const EdgeInsets.only(
                      left: 13,
                      top: 5,
                      right: 13,
                      bottom: 9,
                    ).r,
                    decoration: AppDecoration.outlineBluegray2003f.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 140.w,
                          height: 90.h,
                          margin: const EdgeInsets.only(
                            top: 10,
                            bottom: 5,
                          ).r,
                          child: FittedBox(
                            child: Text(
                              "Buddy\nProgram",
                              maxLines: 2,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: 26.sp,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgFriendlyhandshakeamico,
                          height: 95.h,
                          width: 110.w,
                          margin: const EdgeInsets.only(
                            right: 10,
                          ).r,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 38,
                top: 110,
                right: 38,
              ).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 65.h,
                    width: 30.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: 70.h,
                          width: 30.w,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: 25.h,
                          width: 24.w,
                          alignment: Alignment.topCenter,
                          margin: const EdgeInsets.only(
                            top: 2,
                          ).r,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                    height: 25.h,
                    width: 24.w,
                    margin: const EdgeInsets.only(
                      top: 4,
                      bottom: 55,
                    ).r,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 25.h,
                    width: 24.w,
                    margin: const EdgeInsets.only(
                      top: 4,
                      bottom: 55,
                    ).r,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    child: CustomImageView(
                      svgPath: ImageConstant.imgProfile,
                      height: 25.h,
                      width: 24.w,
                      margin: const EdgeInsets.only(
                        top: 4,
                        bottom: 40,
                      ).r,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
