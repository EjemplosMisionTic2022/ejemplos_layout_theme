import 'package:flutter/material.dart';

import 'labeled_container.dart';

class FlexExpand extends StatelessWidget {
  const FlexExpand({Key? key}) : super(key: key);
  // Expanded class:  widget que expande un hijo de una Fila, Columna o Flex para que el hijo llene el espacio disponible.
  @override
  Widget build(BuildContext context) {
    // El safeArea es un widget que inserta a su hijo con suficiente relleno para evitar intrusiones del sistema operativo
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._header(context, 'Expanded'),
            //El widget Expandido ocupará todo el espacio restante sin restricciones de fila o columna
            _buildExpanded(),
            ..._header(context, 'Flexible'),
            // similar a Expanded, pero también puede utilizar el parámetro flex para calcular el peso de cada
            // widget
            _buildFlexible(),
            Expanded(
              child: Container(),
            ),
            ..._header(context, 'Flexible Column'),
            _buildFlexibleColumn(),
            Expanded(
              child: Container(),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildExpanded() {
    // SizeBox: Una caja con un tamaño especifico.
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          LabeledContainer(
            width: 100,
            color: Colors.green,
            text: '100',
          ),
          Expanded(
            child: LabeledContainer(
              color: Colors.purple,
              text: 'The Remainder',
              textColor: Colors.white,
            ),
          ),
          LabeledContainer(
            width: 40,
            color: Colors.green,
            text: '40',
          )
        ],
      ),
    );
  }

  Widget _buildFlexible() {
    // SizeBox: Una caja con un tamaño especifico.
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.orange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.deepOrange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 2,
            child: LabeledContainer(
              color: Colors.blue,
              text: '50%',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFlexibleColumn() {
    // SizeBox: Una caja con un tamaño especifico.
    return SizedBox(
      height: 100,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.orange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.deepOrange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 2,
            child: LabeledContainer(
              color: Colors.blue,
              text: '50%',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30,
          ),
          child: Text(
            'Pinned to the Bottom',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }

  // devuelve dos widgets, por lo que utilizamos un Iterable
  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      // Un bonito widget para crear un escenario
      SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    ];
  }
}
