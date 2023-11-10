import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';
import 'package:rubduck_movil/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistroScreen extends StatelessWidget {
  RegistroScreen({Key? key}) : super(key: key);

  TextEditingController eightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRubduck1,
                          height: 46.v,
                          width: 130.h),
                      Spacer(flex: 49),
                      SizedBox(
                          height: 430.v,
                          width: 319.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 43.h, top: 35.v, right: 40.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Registro",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          SizedBox(height: 27.v),
                                          Container(
                                              width: 234.h,
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration.primary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Text("Nombre",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 19.v),
                                          Container(
                                              width: 234.h,
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration.primary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Text("Correo",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 19.v),
                                          Container(
                                              width: 234.h,
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration.primary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Text("Contraseña",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 19.v),
                                          CustomTextFormField(
                                              controller: eightController,
                                              hintText: "Repita la contraseña",
                                              textInputAction:
                                                  TextInputAction.done),
                                          SizedBox(height: 48.v),
                                          CustomOutlinedButton(
                                              text: "Comenzar",
                                              onPressed: () {
                                                onTapComenzar(context);
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 430.v,
                                    width: 319.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        border: Border.all(
                                            color: appTheme.indigo600,
                                            width: 3.h))))
                          ])),
                      Spacer(flex: 50),
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent5,
                          height: 37.v,
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          onTap: () {
                            onTapImgImage(context);
                          })
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapComenzar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the appInicioScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appInicioScreen);
  }
}
