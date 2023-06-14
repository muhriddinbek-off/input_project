import 'package:flutter/material.dart';
import 'sign_in.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: const Color(0xFFE5E5E5),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
            children: [
              Image.asset('images/shape.png', height: 150, width: 210, fit: BoxFit.fill,),
            ],
          ),
            const SizedBox(height: 35.0,),
             const Text('Forget your password ?', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Color(0xFF3F3D56)),),
              const SizedBox(height: 72.0,),
              Image.asset('images/forgot-pw.png'),
              const SizedBox(height: 69.0,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey, height: 1.4),
                    filled: true,
                    fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 54.0,),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(325, 56)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                   (context) {
                    return Signin();
                   }
                  ),
                );
                },
                child: const Text('Reset password', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),)),
              TextButton(onPressed: (){
              }, 
              child: const Text('Sign In', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),)),
            ],
          ),
        ],
      ),
    );
  }
}