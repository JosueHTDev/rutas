// Esta es la parte de login
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PedidoMesasPage extends StatefulWidget {
  const PedidoMesasPage({super.key});

  @override
  State<PedidoMesasPage> createState() => _PedidoMesasPage();
}

class _PedidoMesasPage extends State<PedidoMesasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Pedido Mesas'),
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
          Navigator.pop(context);
        },
        tooltip: 'retroseder',
        child: const Icon(Icons.login),
      ),
    );
  }
}
