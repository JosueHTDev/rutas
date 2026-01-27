// esto es el formulario de inicio de sesión a la aplicación de gestión de pedidos
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InicioSesionPage extends StatefulWidget {
  const InicioSesionPage({super.key});

  @override
  State<InicioSesionPage> createState() => _InicioSesionPage();
}

class _InicioSesionPage extends State<InicioSesionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [Text('Inicio Sesión')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go("/menu_principal");
        },
        tooltip: 'Iniciar Sesión',
        child: const Icon(Icons.arrow_outward),
      ),
    );
  }
}
