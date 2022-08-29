import 'dart:ui';

import 'package:finanzas_personales/utils/colors.dart';
import 'package:finanzas_personales/utils/inputs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: Get.width * 0.3 - Get.width - 30,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.colorPrincipal.withAlpha(35)
                ),
                width: Get.width,
                height: Get.width,
              ),
            ),
            Positioned(
              top: Get.width + (Get.width * .7),
              left: -100,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.colorRojo.withAlpha(30)
                ),
                width: Get.width,
                height: Get.width,
              ),
            ),
            SizedBox(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: ListView(
                  children: [


                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 160,
                          child: Image(
                            image: AssetImage('assets/images/icon.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: const [
                        Text('Bienvenido', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                        Text('Inicia sesion para explorar mas caracteristicas.')
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CrearInput(
                      titulo: 'Correo', 
                      hint: 'Ingresa tu correo', 
                      content: '', 
                      tipo: TextInputType.text, 
                      verificado: false.obs, 
                      error: false.obs, 
                      textoOculto: false, 
                      onChange: (String valor){}, 
                      color: CustomColors.colorPrincipal,
                      icon: Icons.email_outlined
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CrearInput(
                      titulo: 'Contraseña', 
                      hint: 'Ingresa tu contraseña', 
                      content: '', 
                      tipo: TextInputType.text, 
                      verificado: false.obs, 
                      error: false.obs, 
                      textoOculto: true, 
                      onChange: (String valor){}, 
                      color: CustomColors.colorPrincipal,
                      icon: Icons.lock_outline_rounded
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/navigation');
                          },
                          child: Container(
                            width: Get.width * 0.7,
                            decoration: BoxDecoration(
                              color: CustomColors.colorPrincipal,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text('Iniciar Sesion', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 17),),
                          ),
                        ),
                      ],
                    )









                  ],
                ),
              ),
            )
          ],
        ) 
      ),
    );
  }
}
