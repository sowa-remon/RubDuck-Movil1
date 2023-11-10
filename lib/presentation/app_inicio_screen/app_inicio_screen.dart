import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';

class AppInicioScreen extends StatelessWidget {
  const AppInicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRubduck1,
                      height: 46.v,
                      width: 130.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20.h)),
                  Spacer(),
                  _buildStackWithImagesAndText(context),
                  SizedBox(height: 54.v),
                  Text("¡Comienza ahora!",
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 31.v),
                  CustomOutlinedButton(
                      height: 54.v,
                      width: 229.h,
                      text: "Regístrate",
                      onPressed: () {
                        onTapRegstrate(context);
                      }),
                  SizedBox(height: 23.v),
                  CustomOutlinedButton(
                      height: 53.v,
                      width: 229.h,
                      text: "Ya tengo una cuenta",
                      buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeOnPrimaryContainer,
                      onPressed: () {
                        onTapYaTengoUnaCuenta(context);
                      }),
                  SizedBox(height: 83.v)
                ]))));
  }

  /// Section Widget
  Widget _buildStackWithImagesAndText(BuildContext context) {
    return SizedBox(
        height: 261.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage5,
              height: 261.v,
              width: 343.h,
              radius: BorderRadius.circular(130.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Opacity(
                  opacity: 0.8,
                  child: Container(
                      width: 287.h,
                      margin: EdgeInsets.only(left: 16.h, top: 45.v),
                      child: Text("Imagen no final",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displayMedium))))
        ]));
  }

  /// Navigates to the registroScreen when the action is triggered.
  onTapRegstrate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapYaTengoUnaCuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
