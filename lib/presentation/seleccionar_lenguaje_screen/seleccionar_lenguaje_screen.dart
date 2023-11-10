import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/app_bar/appbar_title_image.dart';
import 'package:rubduck_movil/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rubduck_movil/widgets/app_bar/custom_app_bar.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';

class SeleccionarLenguajeScreen extends StatelessWidget {
  const SeleccionarLenguajeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 729.v,
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20.h, top: 114.v, right: 20.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 31.h, top: 30.v, right: 31.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Selecciona un lenguaje",
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 309.v),
                                CustomOutlinedButton(
                                    text: "Aprender",
                                    margin:
                                        EdgeInsets.only(left: 8.h, right: 15.h),
                                    onPressed: () {
                                      onTapAprender(context);
                                    })
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 39.h, vertical: 84.v),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildTwelve(context,
                                    userImage: ImageConstant.imgImage10,
                                    userImageSize:
                                        ImageConstant.imgImage1090x90),
                                SizedBox(height: 6.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.h, right: 31.h),
                                    child: Row(children: [
                                      Text("JavaScript",
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: EdgeInsets.only(left: 91.h),
                                          child: Text("Java",
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ])),
                                SizedBox(height: 16.v),
                                _buildTwelve(context,
                                    userImage: ImageConstant.imgImage101,
                                    userImageSize:
                                        ImageConstant.imgImage1095x90),
                                SizedBox(height: 1.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 21.h, right: 29.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("Python",
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 104.h),
                                          child: Text("C++",
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ])),
                                SizedBox(height: 24.v)
                              ])))
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
              margin: EdgeInsets.fromLTRB(42.h, 7.v, 42.h, 14.v),
              onTap: () {
                onTapUser(context);
              })
        ]);
  }

  /// Common widget
  Widget _buildTwelve(
    BuildContext context, {
    required String userImage,
    required String userImageSize,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: userImage,
          height: 90.adaptSize,
          width: 90.adaptSize,
          margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
      CustomImageView(
          imagePath: userImageSize,
          height: 95.v,
          width: 90.h,
          margin: EdgeInsets.only(left: 54.h))
    ]);
  }

  /// Navigates to the perfilScreen when the action is triggered.
  onTapUser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.perfilScreen);
  }

  /// Navigates to the indexScreen when the action is triggered.
  onTapAprender(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.indexScreen);
  }
}
