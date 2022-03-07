
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


final Color mainColor=HexColor("#1C1C1C");
final Color accentColor=HexColor("#FCC91C"); 

//======leftbar===//
class LeftBar extends StatelessWidget {
  final double barWidth;
  const LeftBar({ Key? key, required this.barWidth }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height:25,
         width: barWidth,
         decoration:BoxDecoration(
            color: accentColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20)
            )
         ),
        )
      ],
    );
  }
}

//======righttbar===//
class RigttBar extends StatelessWidget {
  final double barWidth;
  const RigttBar({ Key? key, required this.barWidth, }) : super(key: key);
   
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height:25,
         width: barWidth,
         decoration:BoxDecoration(
            color: accentColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            )
         ),
        )
      ],
    );
  }
}

const  size20=SizedBox(height: 20,);

class Containerr extends StatelessWidget {
  final  controller;
  final String hint;
  const Containerr({ Key? key, required this.controller,required this.hint }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.w300,
          color: accentColor
        ),
        decoration:  InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle:const TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w200,
            color: Colors.white
          )
        ),
      ),
    );
  }
}