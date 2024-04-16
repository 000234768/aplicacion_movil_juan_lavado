import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green, 
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          _buildFooterItem('CONÓCENOS'),
          _buildFooterItem('CCU EN LATINOAMÉRICA'),
          _buildFooterItem('NUESTRAS MARCAS'),
          _buildFooterItem('INNOVACIÓN'),
          _buildFooterItem('SUSTENTABILIDAD'),
          _buildFooterItem('CONSUMO RESPONSABLE DE ALCOHOL'),
          _buildFooterItem('NUESTROS PROVEEDORES'),
          _buildFooterItem('NOTICIAS'),
          _buildFooterItem('PUBLICACIONES CCU'),
          _buildFooterItem('BASES LEGALES'),
          _buildFooterItem('CONTÁCTANOS'),
          _buildFooterItem('SÍGUENOS'),
          SizedBox(height: 10), 
          _buildFooterLogo(), // Agregamos el logo al final en el footer
        ],
      ),
    );
  }

  Widget _buildFooterItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 5), // Espacio entre el texto y la imagen
      ],
    );
  }

  Widget _buildFooterLogo() {
    return Container(
      color: Colors.white, // este fondo es para la imagen y se pueda ver mejor
      child: Image.network(
        'https://www.ccu.cl/wp-content/themes/ccu/img/logo-color.png',
        width: 40,
        height: 40,
      ),
    );
  }
}
