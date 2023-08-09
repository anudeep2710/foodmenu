import 'package:flutter/material.dart';

class mealitemtrait extends StatelessWidget{
  const mealitemtrait({super.key,required this.icon,required this.label});
  final IconData icon;
  final String label;
  Widget build(BuildContext context){
    return Row(
     children: [
      Icon(icon,size: 17,color: Colors.white,),
       SizedBox(width: 6,),
      Text(label,style: const TextStyle(
        color: Colors.white
      ),)
     ],

    );

  }
}