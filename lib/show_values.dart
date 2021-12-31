import 'package:bmicalculator/custom_text_show.dart';
import 'package:bmicalculator/result.dart';
import 'package:flutter/material.dart';

class ShowValues extends StatefulWidget {
  final String age;
  final String height;
  final String weight;

  const ShowValues(
      {Key? key, required this.age, required this.height, required this.weight})
      : super(key: key);

  @override
  State<ShowValues> createState() => _ShowValuesState();
}

class _ShowValuesState extends State<ShowValues> {
  double finalResult = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: Container(
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
                    CustomText(
                      hintText: 'عمر',
                      icon: Icons.watch_later_outlined,
                      textUSer: widget.age,
                    ),
                    CustomText(
                      hintText: 'ارتفاع',
                      icon: Icons.thermostat,
                      textUSer: widget.height,
                    ),
                    CustomText(
                      icon: Icons.monitor_weight_outlined,
                      hintText: 'وزن',
                      textUSer: widget.weight,
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
                            finalResult = BmiCalculator(
                                double.parse(widget.weight),
                                double.parse(widget.height));
                            setState(() {
                              finalResult = finalResult;
                            });

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Resulst(
                                          result: finalResult,
                                        )));
                          },
                        ),
                      ),
                    )
                  ]))),
    );
  }
}

double BmiCalculator(double weight, double height) {
  var result = (weight / (height * height)) * 10000;
  print(result);
  return result;
}
