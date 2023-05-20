/*
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:graduate/presentation/main_screen/main_screen.dart';
import 'package:graduate/widgets/custom_text_form_field.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';

class FrameOneScreen extends StatelessWidget {
  FrameOneScreen({super.key});
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(
              0.5,
              0,
            ),
            end: Alignment(
              0.5,
              1,
            ),
            colors: [
              ColorConstant.deepPurpleA200,
              ColorConstant.deepPurpleA20000,
            ],
          ),
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgFrameone,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 58,
            top: 199,
            right: 58,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(
                    225,
                  ),
                  width: getSize(
                    225,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFloor,
                        height: getVerticalSize(
                          136,
                        ),
                        width: getHorizontalSize(
                          225,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgWorld,
                        height: getVerticalSize(
                          158,
                        ),
                        width: getHorizontalSize(
                          151,
                        ),
                        alignment: Alignment.topRight,
                        margin: getMargin(
                          top: 3,
                          right: 28,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlanes,
                        height: getVerticalSize(
                          88,
                        ),
                        width: getHorizontalSize(
                          40,
                        ),
                        alignment: Alignment.topRight,
                        margin: getMargin(
                          top: 6,
                          right: 10,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlants,
                        height: getVerticalSize(
                          56,
                        ),
                        width: getHorizontalSize(
                          26,
                        ),
                        alignment: Alignment.bottomRight,
                        margin: getMargin(
                          right: 6,
                          bottom: 47,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgShadows,
                        height: getVerticalSize(
                          50,
                        ),
                        width: getHorizontalSize(
                          188,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: getMargin(
                          left: 12,
                          bottom: 17,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: getVerticalSize(
                            65,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            right: 26,
                            bottom: 21,
                          ),
                          padding: getPadding(
                            left: 25,
                            right: 25,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgBooks,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgApple,
                                height: getVerticalSize(
                                  30,
                                ),
                                width: getHorizontalSize(
                                  23,
                                ),
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgEdit,
                        height: getVerticalSize(
                          33,
                        ),
                        width: getHorizontalSize(
                          48,
                        ),
                        alignment: Alignment.bottomCenter,
                        margin: getMargin(
                          bottom: 15,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgEditBlack900,
                        height: getVerticalSize(
                          32,
                        ),
                        width: getHorizontalSize(
                          48,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: getMargin(
                          left: 58,
                          bottom: 19,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCharacter,
                        height: getVerticalSize(
                          167,
                        ),
                        width: getHorizontalSize(
                          72,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: getMargin(
                          left: 16,
                          bottom: 23,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                        height: getVerticalSize(
                          69,
                        ),
                        width: getHorizontalSize(
                          61,
                        ),
                        alignment: Alignment.topCenter,
                        margin: getMargin(
                          top: 45,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgClock,
                        height: getVerticalSize(
                          31,
                        ),
                        width: getHorizontalSize(
                          35,
                        ),
                        alignment: Alignment.topLeft,
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: nameController,
                hintText: "Enter Your University",
                margin: getMargin(
                  top: 57,
                  right: 28,
                  bottom: 5,
                ),
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    top: 1,
                    right: 11,
                    bottom: 6,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearchWhiteA700,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    31,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_circle_right_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
