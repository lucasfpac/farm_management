import 'package:flutter/material.dart';
import './new_registration.dart';
import 'registration_list.dart';
import '../models/registration.dart';

class UserRegistrations extends StatefulWidget {
  const UserRegistrations({super.key});

  @override
  State<UserRegistrations> createState() => _UserRegistrationsState();
}

class _UserRegistrationsState extends State<UserRegistrations> {
  final List<RegistrationCNPJ> _userTransactions = [
    RegistrationCNPJ(
      id: 1,
      ativo: true,
      nomeFantasia: 'Rancho do Boi',
      razaoSocial: 'Rancho do Boi Ltda',
      inscrMunicipal: '798.930.513.329',
      inscrEstadual: '345.593.449.084',
      dataDeAbertura: '12/05/2011',
      cnpj: '77.166.940/0001-80',
      lagrodouro: 'Rua Miguel Ângelo Lapena',
      numero: 213,
      complemento: 'porteira marron',
      bairro: 'Esperança',
      uf: 'MG',
      municipio: 'Ipatinga',
      cep: '35162-326',
      socio: 'Sebastião Ferreira',
      idSocio: 1234,
      email: 'financeiro@ranchodoboi.com.br',
      telefone: '(31) 3605-5484',
      celular: '(31) 99222-3814',
      whatsApp: '(31) 99222-3814',
      obs: 'seg a sexta 8:00 as 15:30',
      date: DateTime.now(),
    ),
    RegistrationCNPJ(
      id: 2,
      ativo: false,
      nomeFantasia: 'Joaquim e Larissa Advocacia Ltda',
      razaoSocial: 'Joaquim e Larissa Advocacia Ltda',
      inscrMunicipal: '265.775.740/9881',
      inscrEstadual: '703.284.777/7785',
      dataDeAbertura: '12/05/2011',
      cnpj: '67.536.013/0001-50',
      lagrodouro: 'Avenida Randolfo Borges Mundim',
      numero: 658,
      complemento: 'Frente',
      bairro: 'Planalto',
      uf: 'MG',
      municipio: 'Patos de Minas',
      cep: '38706-319',
      socio: 'Vitor dos Santos Ferreira',
      idSocio: 322,
      email: 'presidencia@vitorenairconsultoriafinanceirame.com.br',
      telefone: '(34) 3658-8639',
      celular: '(34) 99342-7407',
      whatsApp: '(34) 99342-7407',
      obs: 'seg a sexta 8:00 as 15:30',
      date: DateTime.now(),
    ),
  ];

  void _addNewRegistration(
      int regid,
      bool regAtivo,
      String regNomeFantasia,
      String regRazaoSocial,
      String regInscrMunicipal,
      String regInscrEstadual,
      String regDataDeAbertura,
      String regCnpj,
      String regLagrodouro,
      int regNumero,
      String regComplemento,
      String regBairro,
      String regUf,
      String regMunicipio,
      String regCep,
      String regSocio,
      int regIdSocio,
      String regEmail,
      String regTelefone,
      String regCelular,
      String regWhatsApp,
      String regObs,
      DateTime date) {
    final newReg = RegistrationCNPJ(
      id: regid,
      ativo: regAtivo,
      nomeFantasia: regNomeFantasia,
      razaoSocial: regRazaoSocial,
      inscrMunicipal: regInscrMunicipal,
      inscrEstadual: regInscrEstadual,
      dataDeAbertura: regDataDeAbertura,
      cnpj: regCnpj,
      lagrodouro: regLagrodouro,
      numero: regNumero,
      complemento: regComplemento,
      bairro: regBairro,
      uf: regUf,
      municipio: regMunicipio,
      cep: regCep,
      socio: regSocio,
      idSocio: regIdSocio,
      email: regEmail,
      telefone: regTelefone,
      celular: regCelular,
      whatsApp: regWhatsApp,
      obs: regObs,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newReg);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewRegistration(_addNewRegistration),
        RegistrationList(_userTransactions),
      ],
    );
  }
}
