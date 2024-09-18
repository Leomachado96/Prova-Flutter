import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      body: Center(
        child: Text('Bem-vindo a Tela Principal!'),
      ),
    );
  }
}
