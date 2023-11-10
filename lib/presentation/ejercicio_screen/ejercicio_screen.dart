import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';
import 'package:rubduck_movil/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EjercicioScreen extends StatelessWidget {
  EjercicioScreen({Key? key}) : super(key: key);

  TextEditingController cdigoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(19.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRubduck1,
                          height: 46.v,
                          width: 130.h,
                          onTap: () {
                            onTapImgRubduckSeven(context);
                          }),
                      SizedBox(height: 30.v),
                      SizedBox(
                          height: 623.v,
                          width: 320.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 32.h, top: 28.v, right: 28.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Título",
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          SizedBox(height: 15.v),
                                          Container(
                                              width: 248.h,
                                              margin:
                                                  EdgeInsets.only(right: 11.h),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At urna condimentum volutpat diam.",
                                                  maxLines: 6,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleLargePrimary
                                                      .copyWith(height: 1.20))),
                                          SizedBox(height: 39.v),
                                          CustomTextFormField(
                                              controller: cdigoController,
                                              hintText: "Código",
                                              textInputAction:
                                                  TextInputAction.done,
                                              maxLines: 11,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 23.h,
                                                      vertical: 20.v))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25.h, vertical: 28.v),
                                    decoration: AppDecoration.outlineIndigo
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Spacer(),
                                          CustomOutlinedButton(
                                              height: 46.v, text: "Comprobar")
                                        ])))
                          ])),
                      SizedBox(height: 24.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent5,
                          height: 37.v,
                          width: 33.h,
                          margin: EdgeInsets.only(left: 15.h))
                    ]))));
  }

  /// Navigates to the indexScreen when the action is triggered.
  onTapImgRubduckSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.indexScreen);
  }
}
