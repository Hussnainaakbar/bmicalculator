import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';

late String likes, gotpoints, popularity, totalPoints, details, pac, date;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/bg.png").image, fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              borderRadius: 0,
              blur: 7,
              alignment: Alignment.bottomCenter,
              border: 0,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF75035).withAlpha(55),
                    Color(0xFFffffff).withAlpha(45),
                  ],
                  stops: [
                    0.3,
                    1,
                  ]),
              borderGradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFF4579C5).withAlpha(100),
                    Color(0xFFFFFFF).withAlpha(55),
                    Color(0xFFF75035).withAlpha(10),
                  ],
                  stops: [
                    0.06,
                    0.95,
                    1
                  ]),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.3 - 70,
                          left: 40,
                          child: Container(
                            width: 100,
                            height: 100.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color(0xFFBC1642),
                                Color(0xFFCB5AC6),
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 30,
                          child: Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              gradient: LinearGradient(colors: [
                                Color(0xFFFDFC47),
                                Color(0xFF24FE41),
                              ]),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            // GlassmorphicContainer(
                            //   width:
                            //       MediaQuery.of(context).size.width * 0.9 - 20,
                            //   height:
                            //       MediaQuery.of(context).size.height * 0.4 - 20,
                            //   borderRadius: 35,
                            //   margin: EdgeInsets.all(10),
                            //   blur: 10,
                            //   alignment: Alignment.bottomCenter,
                            //   border: 2,
                            //   linearGradient: LinearGradient(
                            //       begin: Alignment.topLeft,
                            //       end: Alignment.bottomRight,
                            //       colors: [
                            //         Color(0xFFFFFFF).withAlpha(0),
                            //         Color(0xFFFFFFF).withAlpha(0),
                            //       ],
                            //       stops: [
                            //         0.3,
                            //         1,
                            //       ]),
                            //   borderGradient: LinearGradient(
                            //       begin: Alignment.topLeft,
                            //       end: Alignment.bottomRight,
                            //       colors: [
                            //         Color(0xFFFFFFF).withAlpha(01),
                            //         Color(0xFFFFFFF).withAlpha(100),
                            //         Color(0xFFFFFFF).withAlpha(01),
                            //       ],
                            //       stops: [
                            //         0.2,
                            //         0.9,
                            //         1,
                            //       ]),
                            //   child: Text('Naqibi')
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
