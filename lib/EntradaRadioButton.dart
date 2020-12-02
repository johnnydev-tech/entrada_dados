import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("RadioButton"),
        backgroundColor: Colors.deepPurple,
      ) ,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            RadioListTile(
              title:  Text(
                "Masculino",
              style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              ),
              ),
                subtitle: Text("Gênero"),
                activeColor: Colors.deepPurple,
                value: "masculino",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                    print(escolha);
                  });
                }
            ),
            RadioListTile(
                title:  Text(
                  "Feminino",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text("Gênero"),
                activeColor: Colors.deepPurple,
                value: "feminino",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                    print(escolha);
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
                    print("Resultado " + _escolhaUsuario);
              } ,
            ),

            /*
           Text("Masculino"),
            Radio(
                value: "masculino",
                activeColor: Colors.purple,
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                 setState(() {
                   _escolhaUsuario = escolha;
                   print("resultado "+ escolha);
                 });
                }
            ),

            Text("Feminino"),
            Radio(
                value: "feminino",
                activeColor: Colors.purple,
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                 setState(() {
                   _escolhaUsuario = escolha;
                   print("resultado "+ escolha);
                 });
                }
            ),
            */

          ],
        ),
      ),
    );
  }
}
