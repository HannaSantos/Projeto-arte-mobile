import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projetoartemobile/historias/art%20-gotica.dart';
import 'package:projetoartemobile/historias/barroco.dart';
import 'package:projetoartemobile/historias/realism.dart';
import 'package:projetoartemobile/historias/romanticim.dart';
import 'package:projetoartemobile/historias/sculpture.dart';
import 'package:projetoartemobile/historias/widgets/texto-historia.dart';

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}

// class CarouselDemo extends StatelessWidget {
//   CarouselController buttonCarouselController = CarouselController();

//   get current => null;

//   get i => Sculpture();

//   @override
//   Widget build(BuildContext context) => Column(
//         children: [
//           Scaffold(
//             backgroundColor: Colors.black,
//             body: CarouselSlider(
//               options: CarouselOptions(height: 400.0),
//               items: [const Sculpture()].map((i) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(color: Colors.amber),
//                         );
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//             Padding(
//                       padding: const EdgeInsets.only(top: 30, right: 8),
//                       child: Container(
//                         width: 25,
//                         height: 25,
//                         decoration: BoxDecoration(
//                           color: current == index
//                               ? const Color.fromARGB(129, 255, 255, 255)
//                               : Colors.transparent,
//                           border: Border.all(
//                             width: 2.0,
//                             color: const Color.fromARGB(255, 255, 255, 255),
//                           ),
//                           borderRadius: const BorderRadius.all(
//                             Radius.circular(30.0),
//                           ),
//                         ),
//                     
                  
//             ],
//           ),
//         ],
//       );
// }
