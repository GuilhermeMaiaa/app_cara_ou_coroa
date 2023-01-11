import 'package:flutter/material.dart';

class TelaMoeda extends StatefulWidget {


  int numero;

  TelaMoeda(this.numero);


  @override
  State<TelaMoeda> createState() => _TelaMoedaState();
}

class _TelaMoedaState extends State<TelaMoeda> {


  @override
  Widget build(BuildContext context) {

    var escolha = 'images/moeda_cara.png';

    if(widget.numero == 0){
      escolha = 'images/moeda_cara.png';
    }else{
      escolha = 'images/moeda_coroa.png';
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86 ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Padding(
              padding:  EdgeInsets.only(),
              child: Image.asset(escolha) ,
            ),
            GestureDetector(
              child: Image.asset('images/botao_voltar.png'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
