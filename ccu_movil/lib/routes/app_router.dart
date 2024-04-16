// importamos de manera correcta el ruteo de las aplicaciones
import 'package:flutter/material.dart';
import 'package:ccu_movil/pages/home_page.dart';
import 'package:ccu_movil/pages/sustentability_page.dart';
import 'package:ccu_movil/pages/community_page.dart'; 
import 'package:ccu_movil/pages/brands_page.dart'; 

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage()); // Ruta raíz
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/sustentability':
        return MaterialPageRoute(builder: (_) => SustentabilityPage());
      case '/community':
        return MaterialPageRoute(builder: (_) => CommunityPage());
      case '/brands': 
        return MaterialPageRoute(builder: (_) => BrandsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('Página no encontrada'),
            ),
            body: Center(
              child: Text('La ruta ${settings.name} no existe en la aplicación.'),
            ),
          ),
        );
    }
  }
}
