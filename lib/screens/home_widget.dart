import 'package:bni_project/constant/constant_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

TextEditingController _heighController = TextEditingController();
TextEditingController _weighController = TextEditingController();

double _bmi = 0;
String _textResult = "";

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: accentColor, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Containerr(
                    controller: _heighController,
                    hint: "Height",
                  ),
                  Containerr(
                    controller: _weighController,
                    hint: "Weight",
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                 
                  double _w = double.parse(_weighController.text);
                 double _h = double.parse(_heighController.text)/100;

                  setState(() {
                    _bmi = _w / (_h * _h);
                    print(_bmi);
                    if (_bmi > 25) {
                      _textResult = " You are over weight";
                    } else if (_bmi >= 18.5 && _bmi <= 25) {
                      _textResult = " You have normal weight";
                    } else {
                      _textResult = "you are under weight";
                    }
                  });
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 22,
                      color: accentColor,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
               _bmi.toStringAsFixed(2),
                style: TextStyle(
                    fontSize: 52,
                    color: accentColor,
                    fontWeight: FontWeight.w400),
              ),
              size20,
              Visibility(
                // visible: _textResult.isEmpty,
                child: Text(
                  _textResult,
                  style: TextStyle(
                      fontSize: 28,
                      color: accentColor,
                      fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const LeftBar(
                barWidth: 10,
              ),
              size20,
              const LeftBar(
                barWidth: 55,
              ),
              size20,
              const LeftBar(barWidth: 25),
              const RigttBar(barWidth: 45),
              const SizedBox(height: 40),
              const RigttBar(
                barWidth: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
