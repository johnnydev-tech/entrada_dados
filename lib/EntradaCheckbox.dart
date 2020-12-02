import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidabrasileira = false;
  bool _comidamexicana = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title: Text("Checkbox"),
        backgroundColor: Colors.deepPurple,
      ) ,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CheckboxListTile(
              activeColor: Colors.deepPurpleAccent,
                title:  Text("Comida brasilseira",
                style: TextStyle(
                color: Colors.deepPurple
                ),
                ),
                subtitle: Text("A melhor comida!"),
                secondary: Icon(Icons.add_box,
                color: Colors.deepPurple,
                ),
                value: _comidabrasileira,
                onChanged: (bool valor){
                  setState(() {
                    _comidabrasileira =valor;
                  });
                }
            ),

            CheckboxListTile(
                activeColor: Colors.deepPurpleAccent,
                title:  Text("Comida Mexicana",
                  style: TextStyle(
                      color: Colors.deepPurple
                  ),
                ),
                subtitle: Text("Boa e apimentada!"),
                secondary: Icon(Icons.add_box,
                  color: Colors.deepPurple,
                ),
                value: _comidamexicana,
                onChanged: (bool valor){
                  setState(() {
                    _comidamexicana =valor;
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
                print("Comida Brasileira: "+ _comidabrasileira.toString() + " Comida Mexicana: "+ _comidamexicana.toString());
              } ,
            ),

            /*
            Text("Comida brasilseira"),
            Checkbox(
              activeColor: Colors.deepPurpleAccent,
              value: _selecionado,
              onChanged: (bool valor){
               setState(() {
                 _selecionado =valor;
               });
                print("Checkbox: " + valor.toString());
              },
            )
            */

          ],
        ),
      ),
    );
  }
}
