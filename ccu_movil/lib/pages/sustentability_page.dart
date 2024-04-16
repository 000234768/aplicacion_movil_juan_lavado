import 'package:flutter/material.dart';
import '../widgets/header_page.dart'; // Importamos el widget para la cabecera de la página
import '../widgets/footer_page.dart'; // Importamos el widget de pie de página

class SustentabilityPage extends StatefulWidget {
  @override
  _SustentabilityPageState createState() => _SustentabilityPageState();
}

class _SustentabilityPageState extends State<SustentabilityPage> {
  bool showFullText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPage(), // Usamos el HeaderPage como AppBar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Contenedor de la imagen de fondo
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.ccu.cl/wp-content/uploads/2018/03/sustentabilidad.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.4), // Espacio para la imagen
                  // Contenedor de la imagen y las frases
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sustentabilidad',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'En CCU la Sustentabilidad constituye uno de los tres pilares estratégicos de la compañía, junto con Rentabilidad y Crecimiento. En conjunto, componen la hoja de ruta para plasmar el Ser CCU y su Propósito: “Nos apasiona crear experiencias para compartir juntos un mejor vivir”.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.4), // Espacio para la imagen
                ],
              ),
            ),
            // Contenedor del degradado verde
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent, // Transparente en la parte superior
                    Colors.green.withOpacity(0.4), // Color verde con opacidad ajustada
                  ],
                ),
              ),
            ),
           //contenedor de la seungda imagen
            GestureDetector(
              onTap: () {
                setState(() {
                  showFullText = true;
                });
              },
              child: Container(
                color: Colors.green.withOpacity(0.4),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Image.network(
                  'https://www.ccu.cl/wp-content/uploads/2023/10/sustentabilidad-CCU-or.png',
                  width: 200, 
                  height: 200, 
                ),
              ),
            ),
            // Envuelve el footer en un contenedor al final de la página
            Container(
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
