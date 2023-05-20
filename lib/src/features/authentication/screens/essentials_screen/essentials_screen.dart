import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../../../../core/utils/color_constant.dart';
import '../essentials_screen/widgets/essentials_item_widget.dart';
import '../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class EssentialsScreen extends StatelessWidget {
  const EssentialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuDraweritem(),
      endDrawer: const NotificationMenuDraweritem(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity.h,
            width: double.infinity.w,
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
                  svgPath: ImageConstant.imgOnlinegroceriescuate,
                  height: 110.h,
                  width: 150.w,
                  margin: const EdgeInsets.only(
                    top: 14,
                  ).r,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 28,
                      top: 39,
                    ).r,
                    child: Text("Essentials",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: 31.sp,
                            fontFamily: 'Readex Pro',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.32.sp)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                    bottom: 10,
                    right: 20,
                    left: 20,
                  ).r,
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    staggeredTileBuilder: (index) {
                      return const StaggeredTile.fit(1);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return EssentialsItemWidget(index: index);
                    },
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
                top: 80,
                right: 38,
              ).r,
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
                          height: 82.h,
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
