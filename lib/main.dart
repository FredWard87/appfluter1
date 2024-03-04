import 'package:flutter/material.dart';
import 'pagina_uno.dart';
import 'mi_stepper.dart';
import 'pagina_tres.dart';
import 'pagina_cuatro.dart';
import 'pagina_cinco.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple, // Cambiar el color primario a morado
      ),
      home: const MiPaginaPrincipal(),
    );
  }
}

class MiPaginaPrincipal extends StatefulWidget {
  const MiPaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<MiPaginaPrincipal> createState() => _MiPaginaPrincipalState();
}

class _MiPaginaPrincipalState extends State<MiPaginaPrincipal> {
  int _indiceSeleccionado = 0;

  static const List<Widget> _opcionesWidget = <Widget>[
    PaginaUno(),
    MiStepper(),
    PaginaTres(),
    PaginaCuatro(),
    PaginaCinco(),
  ];

  void _enItemTocado(int indice) {
    setState(() {
      _indiceSeleccionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple, // Cambiar el color de fondo a morado oscuro
      appBar: AppBar(
        title: const Text('Explorando el Mundo del Anime'),
        backgroundColor: Colors.purple, // Cambiar el color de la barra de aplicación a morado
      ),
      body: _opcionesWidget.elementAt(_indiceSeleccionado),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Cambiar el color de fondo del bottom navigation bar a blanco
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Comunidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Acerca de',
          ),
        ],
        currentIndex: _indiceSeleccionado,
        selectedItemColor: Colors.deepPurpleAccent, // Cambiar el color de selección a un tono más oscuro de morado
        onTap: _enItemTocado,
      ),
    );
  }
}
