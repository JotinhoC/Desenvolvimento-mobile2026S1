import 'package:app/carrosel_screen.dart';
import 'package:flutter/material.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({super.key});

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegação em Flutter"),
      ),
      body: Column(
        children: [
          Text("Navigator.push(): Navegar para uma nova tela"),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CarroselScreen()));
          }, child: Text("Carrosel")),

          Text("Navigator.pop(): Fechar/voltar"),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Fechar")),

          Text("Navigator.pushReplacement(): Navegar e substituir"),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => CarroselScreen()));
          }, child: Text("Fechar")),

        ],
      ),
    );
  }
}