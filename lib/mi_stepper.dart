import 'package:flutter/material.dart';

class MiStepper extends StatefulWidget {
  const MiStepper({Key? key}) : super(key: key);

  @override
  _MiStepperState createState() => _MiStepperState();
}

class _MiStepperState extends State<MiStepper> {
  int _pasoActual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exploración de Mundos de Anime'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _pasoActual,
        onStepContinue: () {
          setState(() {
            if (_pasoActual < 2) {
              _pasoActual++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_pasoActual > 0) {
              _pasoActual--;
            }
          });
        },
        steps: <Step>[
          Step(
            title: const Text('Mundos Fantásticos'),
            content: const Column(
              children: <Widget>[
                Text('Explora mundos llenos de magia y fantasía'),
                Text('Descubre criaturas místicas y seres legendarios'),
                Text('Adéntrate en tierras lejanas y misteriosas'),
              ],
            ),
            isActive: _pasoActual >= 0,
          ),
          Step(
            title: const Text('Interacción con Personajes'),
            content: Column(
              children: const <Widget>[
                Text('Observa cómo interactúan con héroes y villanos'),
                Text('Descubre su relación con criaturas y monstruos'),
                Text('Aprende sobre su convivencia con otros personajes'),
              ],
            ),
            isActive: _pasoActual >= 1,
          ),
          Step(
            title: const Text('Exploración en Profundidad'),
            content: Column(
              children: const <Widget>[
                Text('Admira su desarrollo de personajes y tramas'),
                Text('Descubre cómo se adaptan a sus mundos'),
                Text('Explora sus motivaciones y objetivos'),
              ],
            ),
            isActive: _pasoActual >= 2,
          ),
        ],
      ),
    );
  }
}
