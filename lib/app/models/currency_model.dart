class CurrencyModel {
  final String name;
  final double dolar;
  final double euro;
  final double bitcoin;
  final double real;

  // final double real;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name: 'Real', dolar: 1.5, euro: 54.0, bitcoin: 5.0),
      CurrencyModel(name: 'Dolar', dolar: 1.7, euro: 44.0, bitcoin: 55.0),
      CurrencyModel(name: 'Euro', dolar: 1.7, euro: 25.0, bitcoin: 66.0),
      CurrencyModel(name: 'Bitcoin', dolar: 7.0, euro: 77.0, bitcoin: 77.0),
    ];
  }
}
