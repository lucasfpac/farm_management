class RegistrationCNPJ {
  final int id;
  final bool ativo;
  final String nomeFantasia;
  final String razaoSocial;
  final String inscrMunicipal;
  final String inscrEstadual;
  final String dataDeAbertura;
  final String cnpj;
  final String lagrodouro;
  final int numero;
  final String complemento;
  final String bairro;
  final String uf;
  final String municipio;
  final String cep;
  final String socio;
  final int idSocio;
  final String email;
  final String telefone;
  final String celular;
  final String whatsApp;
  final String obs;
  final DateTime date;

  RegistrationCNPJ(
      {required this.id,
      required this.ativo,
      required this.nomeFantasia,
      required this.razaoSocial,
      required this.inscrMunicipal,
      required this.inscrEstadual,
      required this.dataDeAbertura,
      required this.cnpj,
      required this.lagrodouro,
      required this.numero,
      required this.complemento,
      required this.bairro,
      required this.uf,
      required this.municipio,
      required this.cep,
      required this.socio,
      required this.idSocio,
      required this.email,
      required this.telefone,
      required this.celular,
      required this.whatsApp,
      required this.obs,
      required this.date});
}
