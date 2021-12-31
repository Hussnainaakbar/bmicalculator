import 'package:bmicalculator/my_home_page.dart';
import 'package:flutter/material.dart';

// import 'demo.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            actions: const [
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 35,
                color: Colors.black,
              ),
              Spacer(),
              Icon(
                Icons.menu,
                size: 35,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: MyHomePage(),
        ));
  }
}
