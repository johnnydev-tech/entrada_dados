import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 5;
  String _label = "5";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.deepPurple,
      ) ,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text(
              "Teste slider",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.deepPurple,
               fontSize: 20,
            ),
            ),

            Slider(
                activeColor: Colors.deepPurple,
                inactiveColor: Colors.grey,
                value: _valor,
                min: 0,
                max: 10,
                label: _label,
                divisions: 5,
                onChanged: (double valor){
                  setState(() {
                    _valor = valor;
                    _label = valor.toString();
                  });
                }
            ),

            RaisedButton(
              padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
              color: Colors.deepPurple,
              child: Text(
                "Salvar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed:(){
                print("Valor novo " + _valor.toString());
              } ,
            ),


          ],
        ),
      ),
    );
  }
}
