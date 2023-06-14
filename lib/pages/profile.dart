import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:input_project/homepage.dart';
import 'package:input_project/class/ceckbox.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
              alignment: Alignment.topLeft,
                height: 330.0,
                color: Colors.blue,
                child: Image.asset('images/shape.png', height: 150, width: 210, fit: BoxFit.fill,),
              ),
              Positioned(
                top: 125,
                right: 0,
                left: 0,
                child: 
                Column(
                  children: [
                    Image.asset('images/person.png', height: 100, fit: BoxFit.fill,),
                    const SizedBox(height: 27.0,),
                    const Text('welcome back, Ozer!', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder:
                            (context) {
                              return HomePage();
                            }
                          ),
                        );
                      }, 
                      child: const Text('Logout', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: Color(0xFF63D4FF)),)),
                  ],
                ),
              ),
            ],
          ),
          const  SizedBox(height: 27,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Image.asset('images/clock.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 85, left: 20),
                child: Text('good afternoon', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 22.0, top: 25.0),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Tasks List', 
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),),
          ),
          const SizedBox(height: 27.0,),
           Container(
            height: 287,
            width: 337,
            child: Card(
              elevation: 5,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                 const SizedBox(height: 28.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Daily Tasks', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: Color(0xFF6A6A6B)),),
                        Icon(Icons.add_circle, color: Color(0xFF10BCF2),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                   Check_box(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}