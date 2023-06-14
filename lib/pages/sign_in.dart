import 'package:flutter/material.dart';
import 'reset_password.dart';
import 'sainup.dart';
import 'profile.dart';


class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xFFE5E5E5), 
      body: ListView(
        children: [
          Row(
            children: [
              Image.asset('images/shape.png', height: 150, width: 210, fit: BoxFit.fill,),
            ],
          ),
          Column(
            children: [
             const SizedBox(height: 35.0,),
              const Text('Welcome Back!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF3F3D56)),),
              const SizedBox(height: 47.0,),
              Image.asset('images/group.png'),
                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.toggle_on, color: Color(0xFF63D4FF), size: 39,),
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
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey, height: 1.4),
                    filled: true,
                    fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: 
                      (context) {
                        return Reset();
                      }
                    ),
                  );
                }, 
                child: const Text('Forgot your password ?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF008EC3)),),),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                   (context) {
                    return Profile();
                   }
                  ),
                );
              }, 
              style: ButtonStyle(     
                  minimumSize: const MaterialStatePropertyAll(Size(325, 56)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              child: const Text('Sign In', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text("Don’t have an account?",style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    ),),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: 
                         (context) {
                          return Sainup();
                         }
                        ),
                      );
                    }, 
                    child: const Text('Sign Up !', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Color(0xFF008EC3)),)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}