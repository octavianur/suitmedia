import 'package:flutter/material.dart';
import 'package:suitmedia/pages/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final _formState = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController palindromeController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
         colors: [
          Colors.blue,
          Color(0xff2B637B),
          Colors.white,
         ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/ic_photo.png", width: 120,),
                // _icon(),
                const SizedBox(height: 50,),
                TextFormField(
                  controller: nameController,
                  validator: (value){
                    if (value == '') {
                      return "Text tidak boleh kosong";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "name",
                    hintStyle: const TextStyle(
                      color: Color(0xff2B637B)),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white
                  ),
                ),
                
                const SizedBox(height: 10,),
                
                TextFormField(
                  controller: palindromeController,
                  validator: (value){
                    if (value == '') {
                      return "Text tidak boleh kosong";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "palindrome",
                    hintStyle: const TextStyle(
                      color: Color(0xff2B637B)),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white
                  ),
                ),
                const SizedBox(height: 35,),
                _checkbtn(),
                const SizedBox(height: 10,),
                _nextbtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller){
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(
        color: Color(0xff2B637B)
      ),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff2B637B)),
          enabledBorder: border,
          focusedBorder: border,
      ),
    );
  }

  Widget _checkbtn(){
    return ElevatedButton(
      onPressed: (){
        if (_formState.currentState!.validate()) {
          print("validation success");
        }else{
           print("validation failed");
        }
      }, 
      child: const SizedBox(
        width: double.infinity,     
        child: Text(
          "CHECK",
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
    );
  }

  Widget _nextbtn(){
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => const SecondScreen()
          )
        );
      }, 
      child: const SizedBox(
        width: double.infinity,     
        child: Text(
          "NEXT",
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
    );
  }
}