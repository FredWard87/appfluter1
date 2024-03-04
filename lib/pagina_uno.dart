import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/kanaoo.jpg", // Cambiar la imagen a una relacionada con el anime
            width: 250,
            height: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            'Explora el Fascinante Mundo del Anime',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.purple, // Cambiar el color del título a morado
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),
          const Text(
            'Descubre las historias, personajes y mundos del anime',
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: const Text(
              '¡Bienvenido a la página de información sobre el Anime!',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
