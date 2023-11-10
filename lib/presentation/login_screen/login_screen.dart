import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';
import 'package:rubduck_movil/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController reaController = TextEditingController();

  TextEditingController reaController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRubduck1,
                          height: 46.v,
                          width: 130.h),
                      Spacer(flex: 48),
                      _buildLoginStack(context),
                      Spacer(flex: 51),
                      SizedBox(height: 7.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent5,
                          height: 37.v,
                          width: 33.h,
                          margin: EdgeInsets.only(left: 21.h),
                          onTap: () {
                            onTapImgImage(context);
                          })
                    ]))));
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
        height: 321.v,
        width: 318.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 44.h, top: 31.v),
                  child: Text("Login", style: theme.textTheme.headlineSmall))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 34.h, vertical: 39.v),
                  decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 64.v),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: CustomTextFormField(
                                controller: reaController, hintText: "Correo")),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: CustomTextFormField(
                                controller: reaController1,
                                hintText: "Contraseña",
                                textInputAction: TextInputAction.done)),
                        SizedBox(height: 43.v),
                        CustomOutlinedButton(
                            text: "Entrar",
                            margin: EdgeInsets.only(left: 8.h),
                            onPressed: () {
                              onTapEntrar(context);
                            })
                      ])))
        ]));
  }

  /// Navigates to the seleccionarLenguajeScreen when the action is triggered.
  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seleccionarLenguajeScreen);
  }

  /// Navigates to the appInicioScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appInicioScreen);
  }
}
