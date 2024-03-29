// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'package:finanzas_personales/screens/cuentas_screen.dart';
import 'package:finanzas_personales/screens/dashboard_screen.dart';
import 'package:finanzas_personales/screens/perfil_screen.dart';


class NavigationController extends GetxController {
  Rx<Widget> mainContent = Container(child: const DashboardPage()).obs;
  int currentIndex = 0;



  void cambiarPagina(int index){
    if(index != currentIndex){

      if(index == 0){
        mainContent.value = Container(child: const DashboardPage());
        currentIndex = index;
        return;
      }
      if(index == 1){
        mainContent.value = Container(child: const CuentasPage());
        currentIndex = index;
        return;
      }
      if(index == 2){
        mainContent.value = Container(child: const CuentasPage());
        currentIndex = index;
        return;
      }
      if(index == 3){
        mainContent.value = Container(child: const PerfilPage());
        currentIndex = index;
        return;
      }



    }
  }



}
