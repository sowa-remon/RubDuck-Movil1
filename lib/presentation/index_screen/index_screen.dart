import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/app_bar/appbar_title_image.dart';
import 'package:rubduck_movil/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rubduck_movil/widgets/app_bar/custom_app_bar.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 37.h, top: 72.v, right: 37.h),
                child: Column(children: [
                  Text("Fundamentos", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 38.v),
                  SizedBox(
                      height: 112.v,
                      width: 116.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 84.v,
                                width: 87.h,
                                margin: EdgeInsets.only(left: 5.h),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(42.h),
                                    border: Border.all(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        width: 5.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: theme.colorScheme.primary,
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(0, 4))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Historia",
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.topRight),
                        Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapView(context);
                                },
                                child: Container(
                                    height: 87.v,
                                    width: 99.h,
                                    margin: EdgeInsets.only(top: 6.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.gray100))))
                      ])),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTwo(context);
                                },
                                child: Container(
                                    height: 83.v,
                                    width: 86.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.h, vertical: 6.v),
                                    decoration: AppDecoration.outlineIndigo600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder41),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup2,
                                        height: 58.adaptSize,
                                        width: 58.adaptSize,
                                        alignment: Alignment.center))),
                            SizedBox(
                                height: 83.v,
                                width: 92.h,
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView1(context);
                                              },
                                              child: Container(
                                                  height: 83.v,
                                                  width: 86.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              41.h),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .indigo600,
                                                          width: 5.h))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              height: 77.v,
                                              width: 84.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(0.2))))
                                    ]))
                          ])),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("Principios",
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary)),
                            Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text("Variables",
                                    style:
                                        CustomTextStyles.titleLargeOnPrimary))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgRubduck1,
            margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(38.h, 7.v, 38.h, 14.v),
              onTap: () {
                onTapUser(context);
              })
        ]);
  }

  /// Navigates to the perfilScreen when the action is triggered.
  onTapUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.perfilScreen);
  }

  /// Navigates to the ejercicioScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ejercicioScreen);
  }

  /// Navigates to the ejercicioScreen when the action is triggered.
  onTapTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ejercicioScreen);
  }

  /// Navigates to the ejercicioScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ejercicioScreen);
  }
}
