// Esta es la parte de login
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPage();
}

class _MenuPrincipalPage extends State<MenuPrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Menu Principal'),
            IconButton(
              onPressed: () {
                context.go("/pedido_mesas");
              },
              icon: Icon(Icons.login),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Iniciar Sesión',
        child: const Icon(Icons.login),
      ),
    );
  }
}
