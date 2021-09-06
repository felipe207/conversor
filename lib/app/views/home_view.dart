import 'package:conversor/app/components/currency_box1.dart';
import 'package:conversor/app/components/currency_box2.dart';
import 'package:conversor/app/components/currency_box3.dart';
import 'package:conversor/app/components/currency_box4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
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
              CurrencyBox1(),
              SizedBox(height: 10),
              CurrencyBox2(),
              SizedBox(height: 10),
              CurrencyBox3(),
              SizedBox(height: 10),
              CurrencyBox4(),
              SizedBox(height: 20),
              /////////////////
              SizedBox(width: 30),
              ////////////////
              // ignore: deprecated_member_use
              RaisedButton(
                padding: EdgeInsets.all(20),
                color: Colors.amber,
                onPressed: () {},
                child: Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
