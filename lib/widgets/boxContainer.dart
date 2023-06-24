


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_ms_mobile/Constants/appColors.dart';

class BoxContainer extends StatelessWidget  {
    double size;
    String title;
    String count;
    String image;

     BoxContainer({super.key,this.size = 200,required this.title,required this.count,required this.image});


  @override
  Widget build(BuildContext context) {
    return Container(

      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: GlobalVariables.boxColor,
      ),
      width: size,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: GlobalVariables.mainColor,
              ),
            ),
            child: Image.asset(
              image,
              scale: 10,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style:TextStyle(
                  fontSize: 10,
                  color:GlobalVariables.textColor,
                  fontWeight: FontWeight.bold),
              ),
              Text(count,style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
