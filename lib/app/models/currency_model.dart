class CurrencyModel {
  final String name;
  final double dolar;
  final double euro;
  final double bitcoin;
  final double real;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', dolar: 4.5, euro: 7.0, bitcoin: 55.0, real: 0),
      CurrencyModel(
          name: 'Dolar', dolar: 4.7, euro: 7.0, bitcoin: 55.0, real: 0),
      CurrencyModel(
          name: 'Euro', dolar: 4.7, euro: 7.0, bitcoin: 66.0, real: 0),
      CurrencyModel(
          name: 'Bitcoin', dolar: 4.0, euro: 8.0, bitcoin: 77.0, real: 0)
    ];
  }
}
