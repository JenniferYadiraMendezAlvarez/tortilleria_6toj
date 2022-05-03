import 'package:flutter/material.dart';
import 'package:mendezalvarez/galeria_torti.dart';

void main() {
  runApp(TortilleriaApp());
} //tortilleria

class TortilleriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tortilleria',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: PaginaInicial());
  } //widget
} //clase documentacion tortilleriaapp widget sin estado
