import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MaterialApp(home: Screen2()));
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    double unitHeightValue = screenheight * 0.01;
    double multiplier = 8;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenheight * 0.1147),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 180, 182, 228),
              title: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("Nazad"),
              ),
              toolbarHeight: screenheight * 0.5119,
              //titleSpacing: screenWidth * 0.1184,
              titleTextStyle: TextStyle(
                  fontSize: (multiplier * unitHeightValue) * 0.8,
                  color: Colors.black),
              leading: IconButton(
                icon: Image.asset('assets/Left_Arrow.png'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Screen1())),
              ),
            )),
        body: Container(
          color: const Color.fromRGBO(94, 97, 170, 1.0),
          width: screenwidth,
          height: screenheight * 0.8853,
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(
                left: screenwidth * 0.05681,
                right: screenwidth * 0.08636,
                top: screenheight * 0.05,
                bottom: screenheight * 0.05357,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screenwidth * 0.08636,
                    ),
                    child: Image.asset(
                      'Hambas.png',
                      width: screenwidth * 0.1136,
                      height: screenheight * 0.04761,
                    ),
                  ),
                  Text(
                    "Kategorije",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (multiplier * unitHeightValue) * 0.6),
                  )
                ],
              ),
            ),
            Divider(
              thickness: screenheight * 0.002,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(
                left: screenwidth * 0.05681,
                right: screenwidth * 0.08636,
                top: screenheight * 0.05,
                bottom: screenheight * 0.05357,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screenwidth * 0.08636,
                    ),
                    child: Image.asset(
                      'Play.png',
                      width: screenwidth * 0.1136,
                      height: screenheight * 0.04761,
                    ),
                  ),
                  Text(
                    "Simulacija",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (multiplier * unitHeightValue) * 0.6),
                  )
                ],
              ),
            ),
            Divider(
              thickness: screenheight * 0.002,
              color: Colors.white,
            ),
          ]),
        ));
  }
}
