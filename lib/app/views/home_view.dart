import 'package:conversor/app/components/currency_box1.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  //statefull não precisa de contrutor pois possui ciclo de vida
  //parametros tem que ser contantes, se não forem se precisa de um construtor

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late HomeController homeController; //adicionei o late

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 100, right: 30, left: 30, bottom: 20),
          child: Column(
            children: [
              ///////////////
              Image.asset(
                'assets/imagens/logo.jpg',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 40),
              CurrencyBox1(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                  ;
                },
              ),
              SizedBox(height: 10),
              CurrencyBox1(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                  ;
                },
              ),

              /////////////////
              SizedBox(width: 30),
              ////////////////
              // ignore: deprecated_member_use
              RaisedButton(
                padding: EdgeInsets.all(20),
                color: Colors.amber,
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
