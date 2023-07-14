import 'package:flutter/material.dart';
import 'package:suitmedia/components/check_button.dart';
import 'package:suitmedia/components/my_textfield.dart';
import 'package:suitmedia/components/next_button.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final palindromeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 138, 244),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
          
                // image
                 Image.asset("assets/images/ic_photo.png", width: 120,),
          
                const SizedBox(height: 50),
          
                // name textfield
                MyTextField(
                  controller: nameController,
                  hintText: 'Name',
                  obscureText: false,
                ),
          
                const SizedBox(height: 10),
          
                // palindrome textfield
                MyTextField(
                  controller: palindromeController,
                  hintText: 'Palindrome',
                  obscureText: false,
                  FormFieldValidator: (){},
                ),
          
                const SizedBox(height: 25),
          
                // check button
                CheckButton(
                  onTap: (){}, 
                ),
          
                const SizedBox(height: 10),
          
                // next button
                NextButton(
                  onTap: (){}, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}