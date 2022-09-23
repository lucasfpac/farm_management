import 'package:flutter/material.dart';

class NewRegistration extends StatelessWidget {
  final Function addReg;
  final nomeFantasiaController = TextEditingController();
  final razaoSocialController = TextEditingController();
  final inscrMunicipalController = TextEditingController();
  final inscrEstadualController = TextEditingController();
  final cnpjController = TextEditingController();

  NewRegistration(this.addReg);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Nome Fantasia'),
              controller: nomeFantasiaController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Nome Fantasia'),
              controller: nomeFantasiaController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Razão Social'),
              controller: razaoSocialController,
            ),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Inscrição Munícipal'),
              controller: inscrMunicipalController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Incrição Estadual'),
              controller: inscrEstadualController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'CNPJ'),
              controller: cnpjController,
            ),
            TextButton(
              child: const Text('Adicionar Empresa'),
              onPressed: () {
                addReg(
                  nomeFantasiaController.text,
                  razaoSocialController.text,
                  inscrMunicipalController.text,
                  inscrEstadualController.text,
                  cnpjController.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
