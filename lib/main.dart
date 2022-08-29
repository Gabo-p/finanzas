import 'package:finanzas_personales/utils/preferencias.dart';
import 'package:finanzas_personales/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = Preferencias();
  await prefs.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String initialRoute = '/login';


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finanzas Personales',
      initialRoute: initialRoute,
      // initialRoute: '/prospecto',
      getPages: routes,
    );
  }
}