import 'package:flutter/material.dart';

<<<<<<< HEAD
class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
=======
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  int _counter = 0;

  TextEditingController searchController = TextEditingController(); 
  String search = '';

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
>>>>>>> ea5b6d6 (first commit)
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "Third Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ), 
        centerTitle: true,
      ),
<<<<<<< HEAD
=======
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Search for anything ',
                  border: OutlineInputBorder(
                    
                  ),
                ),
                onChanged: (String? value){
                  print(value);
                  setState(() {
                    search = value.toString();
                  });
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5000,
                  itemBuilder: (context, index){
                    late String postion = index.toString();
                    if (searchController.text.isEmpty) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                        ),
                        title: Text('John Wick '+ index.toString()),
                        subtitle: const Text('This is my last message '),
                      );
                    }else if(postion.toLowerCase().contains(searchController.text.toLowerCase())){
                       return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
                        ),
                        title: RichText(
                          text: TextSpan(
                            text: 'John Wick ',
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: index.toString(), 
                                style: TextStyle(color: Colors.red)
                              ),
                            ]
                          ),
                        ),
                        subtitle: const Text('This is my last message '),
                      );
                    }else{
                      return Container();
                    }
                }),
              )
            ],
          ),
        ) 
      ),
>>>>>>> ea5b6d6 (first commit)
    );
  }
}