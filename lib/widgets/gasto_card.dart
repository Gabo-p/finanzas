import 'package:flutter/material.dart';

class MovimientoCard extends StatelessWidget {
  const MovimientoCard({
    Key? key, 
    required this.monto, 
    required this.descripcion, 
    required this.fecha, 
    required this.gasto,
  }) : super(key: key);

  final String monto;
  final String descripcion;
  final String fecha;
  final bool gasto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 3,
                  color: Colors.black12,
                  offset: Offset(0,3)
                )
              ]
            ),
            width: 200,
            height: 100,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: gasto ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 5,
                  height: 70,
                ),
                const SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('$monto lps.', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 170,
                      child: Text(descripcion, style: const TextStyle(fontSize: 12), maxLines: 2, overflow: TextOverflow.ellipsis,)),
                    const SizedBox(height: 5,),
                    Text(fecha, style: TextStyle(fontSize: 14, color: Colors.grey[400]),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}