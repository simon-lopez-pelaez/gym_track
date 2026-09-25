// lib/pantallas/login.dart
import 'package:flutter/material.dart';

class MenuPrincipalScreen extends StatelessWidget {
  const MenuPrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('P-03 Menú Principal')),
      body: const Center(child: Text('Pantalla del menú principal')),
    );
  }
}