import 'dart:ffi';

import 'package:flutter/material.dart';

class Check_box extends StatefulWidget {
  const Check_box({super.key});

  @override
  State<Check_box> createState() => _Check_boxState();
}
bool one_check = false;
bool two_check = false;
bool three_check = false;
bool four_check = false;
bool five_check = false;

class _Check_boxState extends State<Check_box> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.6,
              child: Checkbox(
                fillColor: const MaterialStatePropertyAll(Colors.black),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: one_check, 
                onChanged: (fn1){
                  setState(() {
                    one_check = !one_check;
                  });
                }),
            ),
           const Text('Learn how to make mobile UI by 11am', style: TextStyle(color: Color(0xFF848484), fontWeight: FontWeight.w400, fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 0.6,
              child: Checkbox(
                fillColor: const MaterialStatePropertyAll(Colors.black),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: two_check, 
                onChanged: (fn1){
                  setState(() {
                    two_check = !two_check;
                  });
                }),
            ),
            const  Text('Search how is UX works by 2pm ', style: TextStyle(color: Color(0xFF848484), fontWeight: FontWeight.w400, fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 0.6,
              child: Checkbox(
                fillColor: const MaterialStatePropertyAll(Colors.black),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: three_check, 
                onChanged: (fn1){
                  setState(() {
                    three_check = !three_check;
                  });
                }),
            ),
            const Text('Do your sport by 6pm', style: TextStyle(color: Color(0xFF848484), fontWeight: FontWeight.w400, fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 0.6,
              child: Checkbox(
                fillColor: const MaterialStatePropertyAll(Colors.black),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: four_check, 
                onChanged: (fn1){
                  setState(() {
                    four_check = !four_check;
                  });
                }),
            ),
            const Text('Have lunch by 9pm', style: TextStyle(color: Color(0xFF848484), fontWeight: FontWeight.w400, fontSize: 13),),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 0.6,
              child: Checkbox(
                fillColor: const MaterialStatePropertyAll(Colors.black),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: five_check, 
                onChanged: (fn1){
                  setState(() {
                    five_check = !five_check;
                  });
                }),
            ),
            const Text('Go to sleep by 1am', style: TextStyle(color: Color(0xFF848484), fontWeight: FontWeight.w400, fontSize: 13),),
          ],
        ),
      ],
    );
  }
}