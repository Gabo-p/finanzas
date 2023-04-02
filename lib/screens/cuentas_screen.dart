import 'package:finanzas_personales/controllers/cuentas_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CuentasPage extends GetView<CuentasController> {
  const CuentasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CuentasController());

    return ListView(
      children: [
        const SizedBox(height: 30,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 3,
                    color: Colors.black12,
                    offset: Offset(0,3)
                  ),
                ],
                color: Colors.white
              ),
              width: Get.width * 0.8,
              height: 100,
              // child: ,
            )
          ],
        )
        
      ],
    );
  }
}
