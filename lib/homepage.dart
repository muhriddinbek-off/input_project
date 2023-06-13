import 'package:flutter/material.dart';
import 'pages/sainup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('images/shape.png', height: 160, width: 230, fit: BoxFit.fill,),
            ],
          ),
          const SizedBox(height: 74,),
          Image.asset('images/splash-todo.png'),
          const SizedBox(height: 57.0,),
          const Text('Get thingiz done with Todo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF3F3D56))),
          const SizedBox(height: 30,),
          const  Padding(
            padding: EdgeInsets.symmetric(horizontal: 78),
            child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor tristique enim ornare malesuada. Sapien sed turpis nullam nascetur at et. Vulputate urna interdum egestas id molestie cum.',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, height: 1.4, color: Color(0xFF000000)),
            ),
          ),
          const SizedBox(height: 60,),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Sainup();
              }));
            }, 
            style: ButtonStyle(  
              minimumSize: const MaterialStatePropertyAll(Size(300, 50)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            ),
            child: 
              const  Text('Get Started', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
            ),
        ],
      ),
    );
  }
}