import 'dart:math';
import 'package:app_cara_ou_coroa/TelaMoeda.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {



  void _exibirResultado(){

    var numeroMoeda;

    numeroMoeda = Random().nextInt(2);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaMoeda(numeroMoeda)
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86 ) ,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [

            Image.asset('images/logo.png'),

            GestureDetector(
              child: Image.asset('images/botao_jogar.png'),
              onTap:_exibirResultado ,
            )
          ],
        ),
      ),
    );
  }
}
