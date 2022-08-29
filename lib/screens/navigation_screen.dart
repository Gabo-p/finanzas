import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:finanzas_personales/controllers/navigation_controller.dart';
import 'package:finanzas_personales/utils/colors.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
  }
}

class NavigationPage extends GetView<NavigationController> {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: Obx(()=>controller.mainContent.value),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.colorSecundario,
        onPressed: () { },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.white,
        iconColor: CustomColors.colorSecundario,
        textStyle: const TextStyle(
          color: CustomColors.colorPrincipal,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        indicatorColor: CustomColors.colorPrincipal,
        items: [
          NavBarItems( icon: EvaIcons.homeOutline, title: "Panel"),
          NavBarItems( icon: Icons.attach_money_rounded, title: "Movimientos"),
          NavBarItems( icon: EvaIcons.creditCardOutline, title: "Cuentas"),
          // NavBarItems(icon: EvaIcons.shoppingCartOutline, title: "Cart"),
          NavBarItems( icon: EvaIcons.personOutline, title: "Perfil"),
        ],
        onChanged: controller.cambiarPagina,
      ),
    );
  }
}
