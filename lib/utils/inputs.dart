import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CrearInput extends StatelessWidget {
  const CrearInput({
    Key? key, 
    required this.titulo, 
    required this.hint, 
    required this.content, 
    required this.tipo, 
    required this.verificado, 
    required this.error, 
    required this.textoOculto, 
    required this.onChange, required this.color, required this.icon
  }) : super(key: key);

  final String titulo;
  final String hint;
  final String content;
  final Color color;
  final IconData icon;
  final TextInputType tipo;
  final Rx<bool> verificado;
  final Rx<bool> error;
  final bool textoOculto;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(width: Get.width*0.05,),
            Text(titulo, style: const TextStyle(fontSize: 17),),  
          ],
        ),
        const SizedBox(height: 10, ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[100],
                border: Border.all(color: color, width: 1)
              ),
              width: Get.width * 0.9,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: color,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    width: Get.width * 0.75,
                    height: 30,
                    child: TextFormField(
                      onChanged: (value){
                        onChange(value);
                      },
                      initialValue: content,
                      keyboardType: tipo,
                      cursorHeight: 23,
                      obscureText: textoOculto,
                      decoration: InputDecoration.collapsed(
                        hintText: hint,
                        hintStyle:TextStyle(color: Colors.grey[400], fontSize: 18,),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: verificado.value,
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      width: 25,
                      height: 25,
                      child: const Icon(Icons.check, color: Colors.white, size:  17,)),
                  ),
                  Visibility(
                    visible: error.value,
                    child: Icon(Icons.error_outlined, color: Colors.red[600],),
                  ),
                ],
              ),
            ),
          ]
        )
      ],
    );
  }
}


