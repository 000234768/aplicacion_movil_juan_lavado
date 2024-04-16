import 'package:flutter/material.dart';
import '../widgets/header_page.dart'; // Importamos el widget para la cabecera de la página
import '../widgets/footer_page.dart'; // Importamos el widget de pie de página

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
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
                    'https://www.ccu.cl/wp-content/uploads/2023/03/Primera-mesa-de-relacionamiento-Limache-scaled.jpg',
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
                            'Comunidades',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'CCU busca promover el desarrollo y bienestar de las comunidades que se encuentran en los lugares donde se sitúan sus operaciones.',
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
            // Contenedor de la frase con fondo verde
            Container(
              color: Colors.green.withOpacity(0.4),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children: [
                      Text(
                        'En CCU la Sustentabilidad constituye uno de los tres pilares estratégicos de la compañía, junto con Rentabilidad y Crecimiento. En conjunto, componen la hoja de ruta para plasmar el Ser CCU y su propósito: “Nos apasiona crear experiencias para compartir juntos un mejor vivir”.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        showFullText
                            ? 'Para la compañía la relación con la comunidad es un eje fundamental en el desarrollo de sus actividades. Su compromiso es generar acciones que le permitan relacionarse y acercarse a las comunidades donde se emplaza para generar confianza y valor mutuo. El trabajo con la comunidad lo gestiona a través de un Modelo Corporativo de Relacionamiento Comunitario, el cual se basa en el diálogo, confianza y trabajo conjunto, y propone los lineamientos para gestionar las relaciones con el entorno social y coordinar el actuar de la compañía con sus comunidades. Asimismo, cuenta con Principios de Relacionamiento Comunitario son una declaración de compromisos para orientar las acciones de sus trabajadores con la comunidad. Son una guía para apoyar el proceso de toma de decisiones y la implementación de estrategias.  Los principios son: respetar los derechos de las personas con quienes se relaciona; buscar relaciones permanentes y de calidad; establecer una comunicación eficiente y eficaz; cumplir oportunamente con los compromisos sociales; agregar valor a sus centros de operación a partir de un desarrollo socioeconómico sustentable, y dejar un legado positivo y duradero.'
                            : 'Para la compañía la relación con la comunidad es un eje fundamental en el desarrollo de sus actividades. Su compromiso es generar acciones que le permitan relacionarse y acercarse a las comunidades donde se emplaza para generar confianza y valor mutuo.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  if (!showFullText)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showFullText = true;
                        });
                      },
                      child: Text('Ver más'),
                    ),
                ],
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
