/// Usuario que irá cadastrar a sua loja
class UserModel {
  /// Usado para armazenar o id do usuário;
  String? documentPath;

  /// Aparece na appbar
  /// - Nao pedir o nome completo da pessoa, apenas o que ela quiser preencher, depois eu removo a info de uma identidade com leitor de imagens;
  final String nome;

  /// Telefone de contato para receber mensagem por whatsapp
  final String phone;

  /// Email para a pessoa poder logar quando tiver pronto o acompanhamento de pedidos pelo app e pagamento (dashboard do cliente)
  // Nao ha necessidade de pedir agora, futuramente eu envio mensagem automatica para todas as pessoas que nao tem email cadastrado.
  // Ja que o numero de telefone não é nulo as pessoa recebe por whatsapp uma mensagem solicitando o cadastro...
  final String? email;
  //TODO: Verificar se controller.text retorna null ou empty

  UserModel(
    this.nome,
    this.phone,
    this.email, {
    this.documentPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'phone': phone,
      'email': email,
    };
  }

  factory UserModel.fromMap(String documentPath, Map<String, dynamic> map) {
    return UserModel(
      map['nome'],
      map['phone'],
      map['email'],
      documentPath: documentPath
    );
  }
}

final userList = <UserModel>[
  UserModel('livia amanda viana do bem', '40',
      'liviaavb@yahoo.com', documentPath: 'sdayuidashisdaiuh', ),
  UserModel(
       'marcelo viana', '23', 'marcelofv12@hotmail.com', documentPath: 'sdayuidashisdaiuh',),
  UserModel('Maryanne Soares', '29', null, documentPath: 'sdayuidashisdaiuh', ),
];

/*
 Eu ja tenho a de mae e a de mary, não preciso do email de mary agora, so do de mae...
 
*/
