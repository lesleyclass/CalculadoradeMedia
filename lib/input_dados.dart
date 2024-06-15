import 'package:flutter/material.dart';

class InputDados extends StatefulWidget {
  final Function(String nome, String email, double nota1, double nota2, double nota3) salvarDados;
  final TextEditingController nomeController;
  final TextEditingController emailController;
  final TextEditingController nota1Controller;
  final TextEditingController nota2Controller;
  final TextEditingController nota3Controller;

  const InputDados({
    Key? key,
    required this.salvarDados,
    required this.nomeController,
    required this.emailController,
    required this.nota1Controller,
    required this.nota2Controller,
    required this.nota3Controller,
  }) : super(key: key);

  @override
  _InputDadosState createState() => _InputDadosState();
}

class _InputDadosState extends State<InputDados> {
  void _salvarDados() {
    final nome = widget.nomeController.text;
    final email = widget.emailController.text;
    final nota1 = double.tryParse(widget.nota1Controller.text) ?? 0;
    final nota2 = double.tryParse(widget.nota2Controller.text) ?? 0;
    final nota3 = double.tryParse(widget.nota3Controller.text) ?? 0;

    widget.salvarDados(nome, email, nota1, nota2, nota3);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: widget.nomeController,
          decoration: InputDecoration(labelText: 'Nome'),
        ),
        SizedBox(height: 10),
        TextField(
          controller: widget.emailController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: widget.nota1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Nota 1'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: widget.nota2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Nota 2'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: widget.nota3Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Nota 3'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}