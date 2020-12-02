import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.deepPurple,
      ) ,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            //text
            child: TextField(
              //text, number, emailadress, datime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
                labelStyle: TextStyle(
                  color: Colors.deepPurple,
                ),

                enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.deepPurpleAccent,
                 ) ,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
              ),
              //bloqueado
              //enabled: true,

              //tamanho
              maxLength: 2,
              //maxLengthEnforced: false,

              style: TextStyle(
                fontSize: 25,
                color: Colors.black54,
              ),

              //senha
             // obscureText: true,
              /*
              onChanged: (String texto){
                print("valor digitado: " + texto);
              },*/

              onSubmitted: (String Texto){
                print("Valor digitado: "+ Texto);
              },
              controller: _textEditingController,
              cursorColor: Colors.deepPurple,
            ),
          ),
          RaisedButton(
            child: Text("Salvar",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            color:  Colors.deepPurpleAccent,
            onPressed: (){
                print("valor digitado: " + _textEditingController.text);
            },
          ),
        ],
      ) ,
    );
  }
}
