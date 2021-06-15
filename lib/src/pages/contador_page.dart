import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( 'Número de pulsaciones:', style: _estiloTexto ),
                Text( '$_conteo'  , style: _estiloTexto ),
              ],
            )
        ),
        floatingActionButton: _crearBotones()
    );
  }


  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _restar ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _sumar ),
      ],
    );

  }

  void _sumar() {
    setState(() => _conteo++ );
  }

  void _restar() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }


}

