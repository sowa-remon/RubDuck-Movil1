import 'package:flutter/material.dart';
import 'package:rubduck_movil/core/app_export.dart';
import 'package:rubduck_movil/widgets/custom_outlined_button.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRubduck1,
                      height: 46.v,
                      width: 130.h,
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapImgRubduckSix(context);
                      }),
                  SizedBox(height: 93.v),
                  Text("Mi perfil", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 43.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage5150x150,
                      height: 150.adaptSize,
                      width: 150.adaptSize,
                      radius: BorderRadius.circular(75.h)),
                  SizedBox(height: 42.v),
                  Text("Nombre del Usuario",
                      style: CustomTextStyles.titleLargePrimaryMedium),
                  SizedBox(height: 20.v),
                  Text("Correo del Usuario",
                      style: CustomTextStyles.titleLargePrimaryMedium),
                  SizedBox(height: 58.v),
                  CustomOutlinedButton(
                      text: "Aprender",
                      margin: EdgeInsets.only(left: 44.h, right: 42.h),
                      onPressed: () {
                        onTapAprender(context);
                      }),
                  SizedBox(height: 31.v),
                  CustomOutlinedButton(
                      text: "Salir",
                      margin: EdgeInsets.only(left: 43.h, right: 42.h),
                      onPressed: () {
                        onTapSalir(context);
                      }),
                  SizedBox(height: 49.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgComponent5,
                      height: 37.v,
                      width: 33.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10.h))
                ]))));
  }

  /// Navigates to the indexScreen when the action is triggered.
  onTapImgRubduckSix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.indexScreen);
  }

  /// Navigates to the seleccionarLenguajeScreen when the action is triggered.
  onTapAprender(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seleccionarLenguajeScreen);
  }

  /// Navigates to the appInicioScreen when the action is triggered.
  onTapSalir(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appInicioScreen);
  }
}
