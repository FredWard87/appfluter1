import 'package:flutter/material.dart';

class PaginaCuatro extends StatelessWidget {
  const PaginaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunidad: Lugares para Disfrutar del Anime en México'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Lugares para Disfrutar del Anime en México:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '1. Eventos de Anime en Convenciones como La Mole Comic Con en Ciudad de México',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                '2. Akihabara Maid Café en Ciudad de México',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                '3. Tiendas de Manga y Anime como Generación X en Guadalajara',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                '4. Festivales de Anime como Expo TNT en Monterrey',
                style: TextStyle(fontSize: 16),
              ),
              const Text(
                '5. Cafés Temáticos de Anime como Neko Maid Café en Puebla',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              // Si deseas, puedes agregar una imagen aquí
            ],
          ),
        ),
      ),
    );
  }
}
