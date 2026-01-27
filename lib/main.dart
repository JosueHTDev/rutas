import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/inicio_sesion_page.dart';
import 'package:flutter_application_1/screens/menu_principal_page.dart';
import 'package:flutter_application_1/screens/pedido_menu_page.dart';
import 'package:flutter_application_1/screens/pedido_mesas_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const InicioSesionPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'menu_principal',
          builder: (BuildContext context, GoRouterState state) {
            return const MenuPrincipalPage();
          },
        ),
        GoRoute(
          path: 'pedido_mesas',
          builder: (BuildContext context, GoRouterState state) {
            return const PedidoMesasPage();
          },
        ),
        GoRoute(
          path: 'pedido_menu',
          builder: (BuildContext context, GoRouterState state) {
            return const PedidoMenuPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
