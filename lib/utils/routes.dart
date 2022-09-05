import 'package:finanzas_personales/screens/login_screen.dart';
import 'package:finanzas_personales/screens/navigation_screen.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(name: '/login', page: () => const LoginScreen(), binding: LoginBinding()),
  GetPage(name: '/navigation', page: () => const NavigationPage(), binding: NavigationBinding()),
];
