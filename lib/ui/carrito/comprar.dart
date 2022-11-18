import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/controller/controlcarrito.dart';

class Comprar extends StatelessWidget {
  const Comprar({super.key});

  @override
  Widget build(BuildContext context) {
    ControlCarrito controlc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Tennis Puma'),
            CircleAvatar(
              child: Text(controlc.total.toString()),
            ),
            Divider(),
            const Text('Camisa'),
            CircleAvatar(
              child: Text(controlc.totalc.toString()),
            )
            
          ],
          ),
      ),
    );
  }
}