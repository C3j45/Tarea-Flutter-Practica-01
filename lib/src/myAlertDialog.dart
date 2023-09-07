import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String msg, String titulo, String botonOk,
    String botonCancel) {
  Widget bntCancelar =
      ElevatedButton(onPressed: () {}, child: Text(botonCancel));

  Widget btnOk = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Text(botonOk),
  );
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("$msg"),
    actions: [
      bntCancelar,
      btnOk,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
