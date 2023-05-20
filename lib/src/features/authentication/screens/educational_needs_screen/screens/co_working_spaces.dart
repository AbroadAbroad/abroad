import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import '../../../../../../core/utils/image_constant.dart';
import '../../../../../../theme/app_decoration.dart';
import '../../../../../../widgets/app_bar/appbar_image.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../widgets/custom_image_view.dart';
import '../../notification_menu_draweritem/notification_menu_draweritem.dart';
import '../../side_menu_draweritem/side_menu_draweritem.dart';

class CoWorkingSpacesScreen extends StatefulWidget {
  const CoWorkingSpacesScreen({Key? key}) : super(key: key);

  @override
  State<CoWorkingSpacesScreen> createState() => _CoWorkingSpacesScreenState();
}

class _CoWorkingSpacesScreenState extends State<CoWorkingSpacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NotificationMenuDraweritem(),
      drawer: const SideMenuDraweritem(),
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
                  height: 90.h,
                  leadingWidth: 45.w,
                  leading: Builder(
                    builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CustomImageView(
                          height: 33.h,
                          width: 25.w,
                          svgPath: ImageConstant.imgVolumeWhiteA700,
                          margin: const EdgeInsets.only(
                            left: 28,
                            top: 53,
                            bottom: 20,
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
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('co_working_spaces')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text('Something went wrong'),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    }

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 100).r,
                      child: AnimationLimiter(
                        child: ListView.builder(
                          padding: const EdgeInsets.only(
                            right: 5,
                            left: 5,
                          ).r,
                          physics: const BouncingScrollPhysics(
                            decelerationRate: ScrollDecelerationRate.normal,
                          ),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 600),
                              child: SlideAnimation(
                                child: FadeInAnimation(
                                  child: Container(
                                    height: 155.h,
                                    width: double.infinity.w,
                                    margin: const EdgeInsets.only(
                                      left: 15,
                                      top: 15,
                                      right: 15,
                                    ).r,
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 10,
                                    ).r,
                                    decoration: AppDecoration
                                        .outlineBluegray2003f
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5).r,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(9).r,
                                              topRight:
                                                  const Radius.circular(9).r,
                                              bottomLeft:
                                                  const Radius.circular(9).r,
                                              bottomRight:
                                                  const Radius.circular(9).r,
                                            ).r,
                                            child: CachedNetworkImage(
                                              imageUrl: snapshot
                                                  .data!.docs[index]['image'],
                                              height: 100.h,
                                              width: 120.w,
                                              fit: BoxFit.fill,
                                              filterQuality: FilterQuality.high,
                                              placeholder: (context, url) =>
                                                  SpinKitThreeBounce(
                                                color: Colors.white60,
                                                size: 20.sp,
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Lottie.asset(
                                                "assets/json/imageError.json",
                                                filterQuality:
                                                    FilterQuality.high,
                                                height: 40.h,
                                                width: 100.w,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5).r,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${snapshot.data!.docs[index]['name']} ",
                                                    overflow:
                                                        TextOverflow.visible,
                                                    style: TextStyle(
                                                      fontSize: 13.sp,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .check_circle_outline_rounded,
                                                    color: Colors.white,
                                                    size: 15.sp,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Text(
                                                snapshot.data!.docs[index]
                                                    ['price'],
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Icon(Icons.ac_unit),
                                                  const Text("7"),
                                                  SizedBox(width: 10.w),
                                                  const Icon(Icons
                                                      .accessibility_sharp),
                                                  const Text("13"),
                                                  SizedBox(width: 10.w),
                                                  const Icon(
                                                      Icons.add_chart_rounded),
                                                ],
                                              ),
                                              const Spacer(),
                                              Flexible(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "${snapshot.data!.docs[index]['location']} ",
                                                      overflow:
                                                          TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(height: 10.h),
                                                    Text(
                                                      snapshot.data!.docs[index]
                                                          ['APR'],
                                                      overflow:
                                                          TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 38,
                top: 100,
                right: 39,
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
                          height: 75.h,
                          width: 32.w,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: 23.h,
                          width: 22.w,
                          alignment: Alignment.topCenter,
                          margin: const EdgeInsets.only(
                            top: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                    height: 23.h,
                    width: 22.w,
                    margin: const EdgeInsets.only(
                      top: 4,
                      bottom: 55,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 23.h,
                    width: 22.w,
                    margin: const EdgeInsets.only(
                      top: 4,
                      bottom: 55,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgProfile,
                    height: 23.h,
                    width: 22.w,
                    margin: const EdgeInsets.only(
                      top: 4,
                      bottom: 55,
                    ).r,
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
