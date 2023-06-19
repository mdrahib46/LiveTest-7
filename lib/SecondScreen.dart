import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
   SecondScreen({Key? key}) : super(key: key);


  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'),),
      body: Center(child: Text('Congratulation ! You reached 10 !',style: TextStyle(fontSize: 20),),)

    );
  }
}
