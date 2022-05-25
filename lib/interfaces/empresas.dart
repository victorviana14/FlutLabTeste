import 'package:flutter/material.dart';

class Empresas extends StatefulWidget {
  const Empresas({Key? key}) : super(key: key);

  @override
  State<Empresas> createState() => _EmpresasState();
}

class _EmpresasState extends State<Empresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SCAiflow"),
      ),
    );
  }
}
