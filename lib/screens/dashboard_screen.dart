import 'package:finanzas_personales/widgets/gasto_card.dart';
import 'package:finanzas_personales/widgets/grafia_lineal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardBinding implements Bindings {
  @override
  void dependencies() {
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            
            const SizedBox(width: 20,),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage('assets/images/placeholder.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            const SizedBox(width: 20,),
            Column(
              children: [
                Text('Bienvenido de nuevo.', style: TextStyle(color: Colors.grey[700], fontSize: 12),),
                const Text('Gabriel Perez', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            )


          ],
        ),



        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text('Ultimos Movimientos', style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 120,
          width: Get.width,
          child: ListView(
            primary: false,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: const [


              MovimientoCard(
                fecha: '05/07/2020', 
                descripcion: 'Pago de primera parte pagina web shopstico', 
                monto: '10,000',
                gasto: false, 
              ),
              MovimientoCard(
                fecha: '05/07/2020', 
                descripcion: 'Gastos varios en casa', 
                monto: '150',
                gasto: true, 
              ),
              


            ],
          ),
        ),




        const SizedBox(
          height: 35,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text('Cuentas', style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 130,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: Get.width * 0.45,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.45,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        
        
        
        const SizedBox(
          height: 35,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text('Graficas', style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Anual', style: TextStyle(color: Colors.grey[500], fontSize: 17),),
            const SizedBox(width: 20,),
            Text('Mensual', style: TextStyle(color: Colors.grey[500], fontSize: 17),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            GraficaLineal(),
            GraficaLineal(),
          ],
        ),





      ],
    );
  }
}






