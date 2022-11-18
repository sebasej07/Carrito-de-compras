import 'package:carrito_01/domain/controller/controlcarrito.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),      
      body: ListView(
        children:  [
          ListTile(
            leading: const CircleAvatar(
              child:  Icon(Icons.shopify_sharp),
            ),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const Text('Tennis Jordan', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
               IconButton(onPressed: (){
                controlc.disminuir(1);
                print(controlc.total);
               }, icon: const Icon(Icons.remove_circle)),
               IconButton(onPressed: (){
                controlc.aumentar(1);
                print(controlc.total);
               }, icon: const Icon(Icons.add_circle)) 
              ],
            ),
            subtitle: const Text('120 USD'),
            trailing:  CircleAvatar(
              child: Obx(()=> Text(controlc.total.toString())),
            ),
          ),
          
          ListTile(
            leading: const CircleAvatar(
              child:  Icon(Icons.shopify),
            ),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const Text('Camisa           ', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              
               IconButton(onPressed: (){
                controlc.disminuir(2);
               }, icon: const Icon(Icons.remove_circle)),
               IconButton(onPressed: (){
                controlc.aumentar(2);
               }, icon: const Icon(Icons.add_circle)) 
              ],
            ),
            subtitle: const Text('18 USD'),
            trailing: CircleAvatar(
              //child: Text('0'),
              child: Obx(()=> Text(controlc.totalc.toString())),
            ),
          )
        ],
      ),
    );
  }
}