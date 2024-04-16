import 'package:flutter/material.dart';
import '../widgets/header_page.dart'; // Importamos el widget para la cabecera de la página
import '../widgets/footer_page.dart'; // Importamos el widget de pie de página

class BrandsPage extends StatefulWidget {
  @override
  _BrandsPageState createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  bool showFullText = false;

  // Lista urls de imagenes para mostrar el 2x3
  List<String> imageUrls = [
    'https://mma.prnewswire.com/media/2351693/Pepsi_Logo.jpg?p=twitter',
    'https://grandesmarcas.cl/wp-content/uploads/2016/06/logo-Bilz-Pap.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/ce/Watt%27s-logo.png',
    'https://www.liderlogo.es/wp-content/uploads/2022/12/8fe2fdd3-logo-de-heineken.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8UfEKFdnayReIFCYRdpwijXrp7Gv94MYx1ATOb_mXyw&s',
    'https://www.ccu.cl/wp-content/uploads/2020/04/LOGO-MAS-png.png',
  ];

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
                    'https://www.ccu.cl/wp-content/uploads/2019/02/BODEG.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), 
                  BlendMode.darken,
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
                              'Nuestras marcas\n En Chile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'A través de un sólido y diverso portafolio de marcas de cervezas, gaseosas, aguas embotelladas, néctares, vinos, pisco, ron y sidra, CCU gratifica responsablemente a sus consumidores en todas sus ocasiones de consumo.',
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
            // Contenedor de la galería de imágenes 2x3
            Container(
              color: Colors.green.withOpacity(0.4),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      6, // Total images
                      (index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                imageUrls[index], 
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
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
