import 'package:flutter/material.dart';

import 'myAlertDialog.dart';

class DataUsuarios extends StatefulWidget {
  const DataUsuarios({super.key});

  @override
  State<DataUsuarios> createState() => _DataUsuariosState();
}

class _DataUsuariosState extends State<DataUsuarios> {
  var _name;
  var _phone;

  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/one_piece.png'),
            SizedBox(height: 10.0),
            TextField(
              controller: nameCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa un nombre',
              ),
            ),
            TextField(
                controller: phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Ingresa número de celular',
                )),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber, onPrimary: Colors.black),
              child: Text('Enviar'),
              onPressed: () {
                _name = nameCtrl.text;
                _phone = phoneCtrl.text;

                setState(() {
                  showAlertDialog(
                      context,
                      'El usuario $_name, tiene un telefono $_phone',
                      'Mi APP :L',
                      'ok',
                      ':l');
                });
              },
            )
          ]),
    );
  }
}
