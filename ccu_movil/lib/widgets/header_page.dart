import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://www.ccu.cl/wp-content/themes/ccu/img/logo-color.png',
            width: 40,
            height: 40,
          ),
          Row(
            children: [
              // Opción "Inicio"
              IconButton(
                icon: Icon(Icons.home, color: Colors.green),
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // Ruta a home_page.dart
                },
              ),
              // Opción "Comunidad"
              IconButton(
                icon: Icon(Icons.group, color: Colors.green),
                onPressed: () {
                  Navigator.pushNamed(context, '/community'); // Ruta a community_page.dart
                },
              ),
               // Opción "Marcas"
              IconButton(
                icon: Icon(Icons.local_bar, color: Colors.green), // Icono de copa
                onPressed: () {
                  Navigator.pushNamed(context, '/brands'); 
                },
              ),
               // Opción "Sustentabilidad"
              IconButton(
                icon: Icon(Icons.shopping_bag, color: Colors.green),
                onPressed: () {
                  Navigator.pushNamed(context, '/sustentability'); // 
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
