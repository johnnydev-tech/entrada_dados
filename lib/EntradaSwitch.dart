import 'package:flutter/material.dart';
class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Switch"),
        backgroundColor: Colors.deepPurple,
      ) ,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            SwitchListTile(
              title: Text("Receber notificações?",
              style: TextStyle(
              fontSize: 15,
              color: Colors.deepPurple,
              ),
              ),
              subtitle: Text("Termos e uso"),
              secondary: Icon(
                Icons.notifications_active,
                color: Colors.deepPurple,
              ),
              activeColor: Colors.deepPurple,
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
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
                if(_escolhaUsuario) {
                  print("Ativar notificações");
                }else{
                  print("Não ativar notificações");
                }
              } ,
            ),

            /*
            Text("Receber notificações?"),
              Switch(
                activeColor: Colors.deepPurple,
                  value: _escolhaUsuario,
                  onChanged: (bool valor){
                   setState(() {
                     _escolhaUsuario = valor;
                   });
                  },
              ),
            */

          ],
        ),
      ),
    );
  }
}
