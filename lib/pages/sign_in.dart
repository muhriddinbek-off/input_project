import 'package:flutter/material.dart';


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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
            ],
          ),
        ],
      ),
    );
  }
}