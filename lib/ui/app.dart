import 'package:carrito_01/ui/carrito/Principal_compra.dart';
import 'package:carrito_01/ui/carrito/comprar.dart';
import 'package:carrito_01/ui/carrito/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de compras',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/productos': (context)=> const Productos(),
        '/comprar': (context)=> const Comprar()
      },
    );
  }
}