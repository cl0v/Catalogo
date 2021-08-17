class ServiceModel {
  ServiceModel({
    required this.name,
    this.description,
    required this.timeSpentInMinutes,
    required this.price,
    required this.discountOnSecondaryService,
  });

  ///Nome do serviço que será feito
  String name;

  ///Possivel descrição do serviço
  String? description;

  /// Tempo gasto para cada serviço em média
  int timeSpentInMinutes;

  /// Quanto deseja receber pelo serviço
  double price;

  /// Quanto de desconto para quando o primeiro serviço é cobrado
  /// EXP: Corte custa 15 + barba 5 = 20 reais, porém se for só barba custa 9
  /// Precisa definir um serviço principal, que não sofrerá desconto
  double discountOnSecondaryService;
}
