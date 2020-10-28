import 'package:flutter/material.dart';

void main() => runApp(Pruebas());

class Pruebas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pruebas',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            _butttonNavigationCurved(size),
            _containerPrincipal(size),
          ],
        ),
      ),
    );
  }

  Container _containerPrincipal(Size size) {
    return Container(
            width: size.width,
            height: size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: Text('Hola Mundo!!'),
            ),
          );
  }

  Widget _butttonNavigationCurved(Size size) {
    return Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 130,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple[900], Colors.blue[900]])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 1,
                    height: 130,
                    color: Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mark_as_unread,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 1,
                    height: 130,
                    color: Colors.grey,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          );
  }
}
