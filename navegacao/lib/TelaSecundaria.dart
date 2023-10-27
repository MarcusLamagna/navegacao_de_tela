import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TelaSecundaria extends StatefulWidget {
  //Criando um contrutor
  String valor;

  TelaSecundaria({required this.valor});

  @override
  State<TelaSecundaria> createState() => _TelaecundariaState();
}

class _TelaecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundarial"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text("Segunda tela!"),
            Padding(padding: EdgeInsets.all(15)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: Text("Ir para primeira tela"),
            ),
          ],
        ),
      ),
    );
  }
}
