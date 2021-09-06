import 'package:flutter/material.dart';

class CurrencyBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        color: Colors.amber,
                        textColor: Colors.white,
                        child: Text('Dolar'),
                        onPressed: () {},
                      ),
                    ],
                  )
                  /////////////////////
                  /*     child: SizedBox(
                  height: 0,
                  child: TextFormField(
                    //taked from web
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        hintText: '4,95',
                        labelText: 'Dolar',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
_____________________________________________________________________
*/

/*
                  DropdownButton(
                       isExpanded: true,
                       underline: Container(height: 1,color:Colors.amber,
                       ),
                       items: [DropdownMenuItem(child: Text('real'),
                     ),
                     DropdownMenuItem(child: Text('dolar'),
                     ),
                     ],
                      onChanged: (value) {}),*/
                  //DropdownButton(items: [], onChanged: (value) {}),

                  )),
          /////////////
          SizedBox(width: 10),
          ///////
          Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
