import 'package:flutter/material.dart';
import 'package:suitmedia/pages/ThirdScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ), 
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Welcome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
          ),
          SizedBox(height: 250,),
          Center(
            child: Text("Selected User Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          SizedBox(height: 250,),
          Align(
            alignment: Alignment.bottomCenter,
            child: _choosebtn())
        ],
      ),
    );
  }
  Widget _choosebtn(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => const ThirdScreen()
            )
          );
        }, 
        child: const SizedBox(
          width: double.infinity,     
          child: Text(
            "Choose a User",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: Color(0xff2B637B),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}