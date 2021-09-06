import 'dart:ffi';

import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

import 'dart:math';

import 'package:conversor/app/components/currency_box1.dart';
import 'package:conversor/app/components/currency_box2.dart';
import 'package:conversor/app/components/currency_box3.dart';
import 'package:conversor/app/components/currency_box4.dart';

class HomeController {
  List<CurrencyModel> currencies;

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    Double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
