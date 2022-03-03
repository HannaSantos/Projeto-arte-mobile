import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/art%20-gotica.dart';
import 'package:projetoartemobile/historias/art-deco.dart';
import 'package:projetoartemobile/historias/art-nouveau.dart';
import 'package:projetoartemobile/historias/barroco.dart';
import 'package:projetoartemobile/historias/realism.dart';
import 'package:projetoartemobile/historias/romanticim.dart';
import 'package:projetoartemobile/historias/sculpture.dart';
import 'package:projetoartemobile/inicio/principal.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            CarouselSlider(
              items: const [
                Sculpture(),
                ArtGotica(),
                Barroco(),
                Romanticim(),
                Realism(),
                Nouveau(),
                Deco(),
              ],
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 750.0,
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Principal(),
                  ),
                ),
                child: Container(
                  height: 30,
                  width: 120,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Voltar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
}
   