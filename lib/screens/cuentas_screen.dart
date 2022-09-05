import 'package:finanzas_personales/controllers/cuentas_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CuentasPage extends GetView<CuentasController> {
  const CuentasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CuentasController());

    return ListView(
      children: const [
        
      ],
    );
  }
}
