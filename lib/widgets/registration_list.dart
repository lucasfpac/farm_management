import 'package:farm_management/models/registration.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class RegistrationList extends StatelessWidget {
  final List<RegistrationCNPJ> transactions;

  RegistrationList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((reg) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      reg.ativo.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(reg.nomeFantasia,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      Text(
                        reg.cnpj,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
