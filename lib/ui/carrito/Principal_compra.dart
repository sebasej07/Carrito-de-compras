import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controlcarrito.dart';
//import 'package:navegacion_2290/ui/pages/widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  

  @override
  Widget build(BuildContext context) {
    ControlCarrito controlc = Get.find();
    return Scaffold(
       appBar: AppBar(
        title: const Text('Pagina principal'),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed('/productos');
          }, icon: const Icon(Icons.shopping_cart_sharp))
        ],
        
      
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.redAccent,
                
                width: 450,
                height: 180,
                child: const  CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_960_720.jpg'),
                  radius: 70,
                  //child: Text('SJ', style: TextStyle(fontSize: 40)),
                ),
              ),
              const Divider(
                       color: Colors.redAccent, //color of divider
                       height: 50, //height spacing of divider
                       thickness: 0, //thickness of divier line
                       indent: 25, //spacing at the start of divider
                       endIndent: 25, //spacing at the end of divider
                    ),
              const Text('Sebastian Jimenez', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ),
              const Text('Bogotá, Colombia', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
               
               const Divider(
                       color: Colors.redAccent, //color of divider
                       height: 50, //height spacing of divider
                       thickness: 0, //thickness of divier line
                       indent: 25, //spacing at the start of divider
                       endIndent: 25, //spacing at the end of divider
                    ),

               Obx(()=> Text('Total: '+controlc.sumatotal.toString()+' USD', style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold) )),
              /*CircleAvatar(
                
                child: Obx(()=> Text(controlc.sumatotal.toString()+'USD')),
              )*/
            ],
          ),
          
        ),
        
      ),
    );
  }
}