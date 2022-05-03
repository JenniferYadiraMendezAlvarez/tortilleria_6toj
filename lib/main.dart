import 'package:flutter/material.dart';

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

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/tortilla.jpg",
    "assets/images/tortilleria.jpg",
    "assets/images/tortilleria2.jpg",
    "assets/images/tortilleria3.jpg",
    "assets/images/tortilleria4.jpg",
    "assets/images/tortilleria5.jpg",
    "assets/images/tortilleria6.jpg",
    "assets/images/tortilleria7.jpg",
    "assets/images/tortilleria4.jpg",
    "assets/images/tortilleria5.jpg",
    "assets/images/tortilleria6.jpg",
    "assets/images/tortilleria7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tortilleria"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
