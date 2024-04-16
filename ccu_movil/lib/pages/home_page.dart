import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/header_page.dart'; // Importamos el widget para la cabecera de la página
import '../widgets/footer_page.dart'; // Importamos el widget de pie de página

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderPage(), // ponemos el titulo debajo del header
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Sé un CRÁ',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HomePageCarousel(),
                  SizedBox(height: 20),
                  HomePageImage(
                    imageUrl:
                        'https://www.ccu.cl/wp-content/uploads/2018/03/foto-1.jpg',
                    text: 'Nuestros Productos\n\nCon especial foco en cervezas y bebidas sin alcohol, la multicategoría define nuestra relación con clientes y consumidores en todos los mercados en los que operamos. Completan la multicategoría el vino, la sidra y los licores. Ponemos permanente foco y recursos en construir marcas de valor en la mente y corazón de nuestros consumidores. Esto lo hacemos tanto desde las marcas propias de CCU, como desde aquellas que operamos junto a nuestros socios estratégicos.',
                  ),
                  SizedBox(height: 20),
                  // Envuelve el footer en un contenedor dentro del SingleChildScrollView
                  Container(
                    child: Footer(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageImage extends StatelessWidget {
  final String imageUrl;
  final String text;

  HomePageImage({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.green.withOpacity(0.4),
            BlendMode.srcATop,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomePageCarousel extends StatefulWidget {
  @override
  _HomePageCarouselState createState() => _HomePageCarouselState();
}

// clase del carrusel de imágenes en el centro de la pagina
class _HomePageCarouselState extends State<HomePageCarousel> {
  Map<String, String> imageTextMap = {
    'https://www.ccu.cl/wp-content/uploads/2023/03/Primera-mesa-de-relacionamiento-Limache-scaled.jpg': 'Comunidad',
    'https://www.ccu.cl/wp-content/uploads/2018/03/sustentabilidad.jpg': 'Sustentabilidad',
    'https://www.ccu.cl/wp-content/uploads/2024/03/Disfruta-con-responsabilidad.jpg': 'Sé un CRÁ',
    'https://www.ccu.cl/wp-content/uploads/2019/02/BODEG.jpg': 'Nuestras marcas',
  };

// tamaños y personalizacion del carrusel
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.4,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.8,
      ),
      items: imageTextMap.entries.map((entry) {
        String imageUrl = entry.key;
        String text = entry.value;
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () { // botones de redireccion
                if (text == 'Comunidad') {
                  Navigator.pushNamed(context, '/community');
                } else if (text == 'Sustentabilidad') {
                  Navigator.pushNamed(context, '/sustentability');
                } else if (text == 'Sé un CRÁ') {
                  Navigator.pushNamed(context, '/home');
                } else if (text == 'Nuestras marcas') {
                  Navigator.pushNamed(context, '/brands');
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        if (text == 'Comunidad') {
                          Navigator.pushNamed(context, '/community');
                        } else if (text == 'Sustentabilidad') {
                          Navigator.pushNamed(context, '/sustentability');
                        } else if (text == 'Sé un CRÁ') {
                          Navigator.pushNamed(context, '/home');
                        } else if (text == 'Nuestras marcas') {
                          Navigator.pushNamed(context, '/brands');
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Cambia el color del botón a verde
                      ),
                      child: Text(
                        'Más información',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
