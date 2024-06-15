import 'package:flutter/cupertino.dart';

class DisplayDados extends StatelessWidget {
  final String nome;
  final String email;
  final double nota1;
  final double nota2;
  final double nota3;
  final double media;

  const DisplayDados({
    Key? key,
    required this.nome,
    required this.email,
    required this.nota1,
    required this.nota2,
    required this.nota3,
    required this.media,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Nome: $nome',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Email: $email',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Notas: $nota1, $nota2, $nota3',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}