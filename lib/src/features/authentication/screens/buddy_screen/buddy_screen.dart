import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../../../../core/utils/color_constant.dart';
import '../buddy_screen/widgets/buddy_item_widget.dart';
import '../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class BuddyScreen extends StatelessWidget {
  const BuddyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NotificationMenuDraweritem(),
      drawer: const SideMenuDraweritem(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
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
                  height: 75.h,
                  leadingWidth: 50.w,
                  leading: Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CustomImageView(
                          height: 35.h,
                          width: 25.w,
                          svgPath: ImageConstant.imgVolumeWhiteA700,
                          margin: const EdgeInsets.only(
                            left: 28,
                            top: 43,
                            bottom: 20,
                          ).r,
                        ),
                      );
                    },
                  ),
                  centerTitle: true,
                  title: AppbarImage(
                    height: 35.h,
                    width: 34.w,
                    svgPath: ImageConstant.imgGlobeWhiteA700,
                    margin: const EdgeInsets.only(
                      top: 52,
                      bottom: 20,
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
                            height: 35.h,
                            width: 35.w,
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
                CustomImageView(
                  svgPath: ImageConstant.imgFriendlyhandshakeamico,
                  height: 140.h,
                  width: 140.w,
                  margin: const EdgeInsets.only(top: 13).r,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20).r,
                    child: Text(
                      "Buddy Program",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: 28.sp,
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                          top: 11, right: 20, left: 20, bottom: 50)
                      .r,
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    staggeredTileBuilder: (index) {
                      return const StaggeredTile.fit(1);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return BuddyItemWidget(index: index);
                    },
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 38, top: 110, right: 38).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 75.h,
                    width: 32.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: 75.h,
                          width: 32.w,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: 25.h,
                          width: 24.w,
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
                    height: 25.h,
                    width: 24.w,
                    margin: const EdgeInsets.only(top: 4, bottom: 55).r,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 25.h,
                    width: 24.w,
                    margin: const EdgeInsets.only(top: 4, bottom: 55).r,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgProfile,
                    height: 25.h,
                    width: 24.w,
                    margin: const EdgeInsets.only(top: 4, bottom: 55).r,
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
