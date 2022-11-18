import 'package:carrito_01/domain/controller/controlcarrito.dart';
import 'package:carrito_01/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ControlCarrito());
  runApp(const App());
}

