import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VidentePage(),
  ));
}

class VidentePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        title: Text('Vidente Virtual'),
        backgroundColor: Colors.brown[800],
      ),
      body: Vidente(),
    );
  }
}

class Vidente extends StatefulWidget {
  @override
  _VidenteState createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroImagem = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              numeroImagem = Random().nextInt(5) + 2;
              print(numeroImagem);
            });
          },
          child: Image(
            image: AssetImage('imagens/vidente$numeroImagem.png'),
          ),
        ),
      ),
    );
  }
}
