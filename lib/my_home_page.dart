import 'package:bmicalculator/show_values.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    ageController.dispose();
    hieghtController.dispose();
    weightController.dispose();
    super.dispose();
  }

  String age = '';
  String hieght = '';
  String weight = '';
  TextEditingController ageController = TextEditingController();
  TextEditingController hieghtController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  static const LinearGradient createGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [Color(0XFFF6A419), Color(0XFFF6A419)]);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  fit: BoxFit.contain,
                  width: 400,
                  image: AssetImage('assests/bm.PNG')),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 330,
                color: Color(0xffF6A419),
                child: const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'حاسبة مؤشر كتلة الجسم',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'arabic lkjadhfljk alkjdfhljk lkdjsfblkjsd fdskjfsafd ldkjfask  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              kmyText(
                mycontroller: ageController,
                hintText: 'عمر',
                icon: Icons.watch_later_outlined,
                onchanged: (valueAge) {
                  setState(() {
                    age = valueAge;
                  });
                  print(age);
                },
              ),
              kmyText(
                mycontroller: hieghtController,
                hintText: 'ارتفاع                                   (cm)',
                icon: Icons.thermostat,
                onchanged: (valueHeight) {
                  setState(() {
                    hieght = valueHeight;
                  });
                  print(hieght);
                },
              ),
              kmyText(
                mycontroller: weightController,
                hintText: 'وزن                                       (kg)',
                icon: Icons.monitor_weight_outlined,
                onchanged: (valueWeight) {
                  setState(() {
                    weight = valueWeight;
                  });
                  print(weight);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF6A419),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                    label: const Text(
                      'احسب بمي',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {
                      if (age == '' || hieght == '' || weight == '') {
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ShowValues(
                                      height: hieght,
                                      weight: weight,
                                      age: age,
                                    )));
                        ageController.clear();
                        hieghtController.clear();
                        weightController.clear();
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
