// Esta es la parte de login
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PedidoMenuPage extends StatefulWidget {
  const PedidoMenuPage({super.key});

  @override
  State<PedidoMenuPage> createState() => _PedidoMenuPage();
}

class _PedidoMenuPage extends State<PedidoMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Pedido Menu'),
            IconButton(
              onPressed: () {
                context.go("/pedido_menu");
              },
              icon: Icon(Icons.login),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go("/pedido_mesas");
        },
        tooltip: 'retroseder',
        child: const Icon(Icons.login),
      ),
    );
  }
}
