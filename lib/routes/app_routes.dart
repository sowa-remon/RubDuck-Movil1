import 'package:flutter/material.dart';
import 'package:rubduck_movil/presentation/app_inicio_screen/app_inicio_screen.dart';
import 'package:rubduck_movil/presentation/login_screen/login_screen.dart';
import 'package:rubduck_movil/presentation/registro_screen/registro_screen.dart';
import 'package:rubduck_movil/presentation/seleccionar_lenguaje_screen/seleccionar_lenguaje_screen.dart';
import 'package:rubduck_movil/presentation/index_screen/index_screen.dart';
import 'package:rubduck_movil/presentation/perfil_screen/perfil_screen.dart';
import 'package:rubduck_movil/presentation/ejercicio_screen/ejercicio_screen.dart';
import 'package:rubduck_movil/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String appInicioScreen = '/app_inicio_screen';

  static const String loginScreen = '/login_screen';

  static const String registroScreen = '/registro_screen';

  static const String seleccionarLenguajeScreen =
      '/seleccionar_lenguaje_screen';

  static const String indexScreen = '/index_screen';

  static const String perfilScreen = '/perfil_screen';

  static const String ejercicioScreen = '/ejercicio_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    appInicioScreen: (context) => AppInicioScreen(),
    loginScreen: (context) => LoginScreen(),
    registroScreen: (context) => RegistroScreen(),
    seleccionarLenguajeScreen: (context) => SeleccionarLenguajeScreen(),
    indexScreen: (context) => IndexScreen(),
    perfilScreen: (context) => PerfilScreen(),
    ejercicioScreen: (context) => EjercicioScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
