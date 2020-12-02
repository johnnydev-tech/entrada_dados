import 'package:entradadados/CampoTexto.dart';
import 'package:entradadados/EntradaSlider.dart';
import 'package:flutter/material.dart';
import 'EntradaCheckbox.dart';
import 'EntradaRadioButton.dart';
import 'EntradaSwitch.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Entrada de dados APP"),
        backgroundColor: Colors.deepPurple,
      ) ,

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[


            RaisedButton(
              padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
              color: Colors.deepPurple,
              child: Text(
                "Checkbox",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EntradaCheckbox()));
                }
            ),


            RaisedButton(
                padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
                color: Colors.deepPurple,
                child: Text(
                  "TextField",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CampoTexto()));
                }
            ),


            RaisedButton(
                padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
                color: Colors.deepPurple,
                child: Text(
                  "RadioButton",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EntradaRadioButton()));
                }
            ),


            RaisedButton(
                padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
                color: Colors.deepPurple,
                child: Text(
                  "Switch",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EntradaSwitch()));
                }
            ),

            RaisedButton(
                padding: EdgeInsets.fromLTRB(38, 15, 35, 15),
                color: Colors.deepPurple,
                child: Text(
                  "Slider",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EntradaSlider()));
                }
            ),

          ],
        ),
      ),
    );
  }
}
