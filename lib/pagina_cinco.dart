import 'package:flutter/material.dart';

class PaginaCinco extends StatelessWidget {
  const PaginaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca del Anime'),
        backgroundColor: Colors.purple, // Cambiar el color de la barra de aplicación a morado
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Acerca del Anime:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple, // Cambiar el color del título a morado
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'El anime es un estilo de animación originado en Japón que se ha vuelto extremadamente popular en todo el mundo. El término "anime" se refiere a una amplia variedad de géneros y estilos de animación, que van desde la fantasía y la ciencia ficción hasta el romance y la comedia.',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'Los animes suelen estar basados en mangas (cómics japoneses) o novelas ligeras, y pueden ser dirigidos a diversas audiencias, desde niños hasta adultos. Muchos animes han ganado reconocimiento internacional por su calidad artística, narrativa compleja y personajes memorables.',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'El mundo del anime es vasto y diverso, con una amplia gama de títulos para elegir. Desde clásicos atemporales hasta series de moda, el anime ofrece algo para todos los gustos y edades.',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                'Explora nuevos mundos, conoce personajes fascinantes y sumérgete en historias emocionantes a través del maravilloso mundo del anime.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              // Si deseas, puedes agregar una imagen aquí
              Image.asset(
                "assets/images/kimetsu.jpg", // Agregar una imagen relacionada con el anime
                width: 300,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
