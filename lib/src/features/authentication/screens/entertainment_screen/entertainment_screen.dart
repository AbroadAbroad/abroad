import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../../../../core/utils/color_constant.dart';
import '../entertainment_screen/widgets/entertainment_item_widget.dart';
import '../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';

class EntertainmentScreen extends StatelessWidget {
  const EntertainmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NotificationMenuDraweritem(),
      drawer: const SideMenuDraweritem(),
      backgroundColor: ColorConstant.whiteA700,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.imgFrameone),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                CustomAppBar(
                  height: 85.h,
                  leadingWidth: 45.w,
                  leading: Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CustomImageView(
                          height: 33.h,
                          width: 23.w,
                          svgPath: ImageConstant.imgVolumeWhiteA700,
                          margin: const EdgeInsets.only(
                            left: 28,
                            top: 45,
                            bottom: 15,
                          ).r,
                        ),
                      );
                    },
                  ),
                  centerTitle: true,
                  title: AppbarImage(
                    height: 33.h,
                    width: 33.w,
                    svgPath: ImageConstant.imgGlobeBlack90035x34,
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
                            height: 33.h,
                            width: 33.w,
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
                  svgPath: ImageConstant.imgAmusementparkamico,
                  height: 110.h,
                  width: 120.w,
                  margin: const EdgeInsets.only(
                    top: 24,
                  ).r,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 43,
                  ).r,
                  child: Text("Entertainment",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: 31.sp,
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.32.sp)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 60,
                    right: 10,
                    left: 10,
                  ).r,
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    staggeredTileBuilder: (index) {
                      return const StaggeredTile.fit(1);
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return EntertainmentItemWidget(index: index);
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
                    height: 75.w,
                    width: 30.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: 75.w,
                            width: 30.w,
                            alignment: Alignment.center),
                        CustomImageView(
                            svgPath: ImageConstant.imgHome,
                            height: 23.h,
                            width: 22.w,
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.only(top: 4).r),
                      ],
                    ),
                  ),
                  CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                      height: 23.h,
                      width: 22.w,
                      margin: const EdgeInsets.only(top: 4, bottom: 45).r),
                  CustomImageView(
                      svgPath: ImageConstant.imgVolume,
                      height: 23.h,
                      width: 22.w,
                      margin: const EdgeInsets.only(top: 4, bottom: 45).r),
                  CustomImageView(
                      svgPath: ImageConstant.imgProfile,
                      height: 23.h,
                      width: 22.w,
                      margin: const EdgeInsets.only(top: 4, bottom: 45).r),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
