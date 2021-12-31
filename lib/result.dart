import 'package:bmicalculator/custom_box.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class Resulst extends StatefulWidget {
  final double result;
  Resulst({Key? key, required this.result}) : super(key: key);

  @override
  State<Resulst> createState() => _ResulstState();
}

class _ResulstState extends State<Resulst> {
  bool underweight = false;

  bool normal = false;

  bool overWeight = false;

  bool severlyOverweight = false;

  bool verySeverlyOverweight = false;

  String textR = '';

  String buttonText = '';

  bool calculate(double val) {
    if (val <= 18.5) {
      setState(() {
        underweight = true;
        buttonText = 'تحت الوزن';
        textR =
            'أنت تعاني من نقص الوزن. ننصحك باتباع نظام غذائي وممارسة الرياضة. يمكنك اتباع نصيحتنا بشأن هذا في تطبيقنا في قسم زيادة الوزن. يرجى استشارة أخصائي التغذية قبل البدء في أي نظام غذائي أو برنامج تمارين.';
      });
      print(underweight);
      return underweight;
    } else if (val > 18.5 && val <= 25) {
      setState(() {
        normal = true;
        textR =
            'هناك ثلاثة أشياء أساسية يقوم بها الأشخاص الأصحاء كل يوم: ممارسة الرياضة ، والحفاظ على نظام غذائي مغذي ، والحصول على نوم جيد ليلاً. تتضمن الرفاهية الجسدية اتباع أسلوب حياة صحي لتقليل مخاطر الإصابة بالأمراض.';
      });
      print(normal);
      return normal;
    } else if (val > 25 && val <= 30) {
      setState(() {
        buttonText = 'زيادة الوزن';
        overWeight = true;
        textR =
            'كنت بدينة. ننصحك باتباع نظام غذائي وممارسة الرياضة. يمكنك اتباع نصيحتنا بشأن هذا في تطبيقنا في قسم إنقاص الوزن. يرجى استشارة أخصائي التغذية قبل البدء في أي نظام غذائي أو برنامج تمارين.';
      });
      print(overWeight);
      return overWeight;
    } else if (val > 30 && val <= 35) {
      setState(() {
        buttonText = 'زيادة الوزن';
        severlyOverweight = true;
        textR =
            'كنت تعاني من السمنة المفرطة. ننصحك باتباع نظام غذائي وممارسة الرياضة. يمكنك اتباع نصيحتنا بشأن هذا في تطبيقنا في قسم إنقاص الوزن. يرجى استشارة أخصائي التغذية قبل البدء في أي نظام غذائي أو برنامج تمارين.';
      });
      print(severlyOverweight);
      return severlyOverweight;
    } else {
      setState(() {
        buttonText = 'زيادة الوزن';
        verySeverlyOverweight = true;
        textR =
            'كنت تعاني من سمنة مفرطة. ننصحك باتباع نظام غذائي وممارسة الرياضة. يمكنك اتباع نصيحتنا بشأن هذا في تطبيقنا في قسم إنقاص الوزن. يرجى استشارة أخصائي التغذية قبل البدء في أي نظام غذائي أو برنامج تمارين.';
      });
      print(verySeverlyOverweight);
      return verySeverlyOverweight;
    }
  }

  // @override
  // void setState(VoidCallback fn) {
  //   calculate(widget.result);
  //   super.setState(fn);

  // }

  @override
  void initState() {
    super.initState();
    calculate(widget.result);
  }

  @override
  void dipose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(8.0),
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
                width: 300,
                color: Color(0xffF6A419),
                child: const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'نتيجة الآلة الحاسبة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 155,
                width: 410,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color:
                              underweight == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: normal == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color:
                              overWeight == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: severlyOverweight == true
                              ? Colors.black
                              : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: verySeverlyOverweight == true
                              ? Colors.black
                              : Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        WeigthBox(
                          boxText: 'نقص الوزن',
                          color: Color(0xffCCE0FB),
                        ),
                        WeigthBox(
                          boxText: 'الوزن المناسب',
                          color: Color(0xff91E7B6),
                        ),
                        WeigthBox(
                          boxText: 'وزن زائد',
                          color: Color(0xff92B3E8),
                        ),
                        WeigthBox(
                          boxText: 'سمنة',
                          color: Color(0xffFAA719),
                        ),
                        WeigthBox(
                          boxText: 'السمنة المفرطة',
                          color: Color(0xffFF6974),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color:
                              underweight == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: normal == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color:
                              overWeight == true ? Colors.black : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: severlyOverweight == true
                              ? Colors.black
                              : Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: verySeverlyOverweight == true
                              ? Colors.black
                              : Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
                child: Container(
                  child: Text(
                    textR,
                    //  maxLines: 4,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      letterSpacing: -1,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                ).asGlass(
                    tintColor: const Color(0xffFAA719), blurX: 30, blurY: 30),
              ),
              normal == false
                  ? Padding(
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
                          label: Text(
                            buttonText,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
