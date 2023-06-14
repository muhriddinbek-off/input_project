import 'package:flutter/material.dart';
import 'sign_in.dart';

class Sainup extends StatelessWidget {
  const Sainup({super.key});

    Widget input_page (String title) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: title,
              hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey, height: 1.4),
            filled: true,
            fillColor: Colors.white,
            ),
          ),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xFFE5E5E5), 
      body: ListView(
        children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('images/shape.png', height: 150, width: 210, fit: BoxFit.fill,),
            ],
          ),
         const SizedBox(height: 60.0,),
          const  Text('Welcome Onboard', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF3F3D56)),),
           const SizedBox(height: 40.0,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 75),
            child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, height: 1.4),
              ),
          ),
          const SizedBox(height: 30.0,),
          input_page('Enter your name'),
          input_page('Enter your email'),
          input_page('Enter your password'),
          input_page('Confim your password'),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: 
                  (context){
                    return Signin();
                  }
                ),
              );
            }, 
            style: ButtonStyle(
              minimumSize: const MaterialStatePropertyAll(Size(325.0, 56.0)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            ),
            child: const Text('Sign Up', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have Account ?',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF000000)),),
                const SizedBox(width: 5,),
                TextButton(
                  onPressed: (){
                    
                  }, 
                  child: const Text('Sign In !', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC3)),),),
              ],
            ),
        ],
      ),
        ],
      ),
    );
  }
}