

import 'package:flutter/material.dart';
import 'package:counterapp/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter Value',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            '$counter',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){
                    setState(() {
                      counter++;
                      if(counter ==5){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text('Counter Alert'),
                            content: Text('Counter Value is : $counter'),
                            actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: Text('ok'))],
                          );

                        });

                      }
                      if(counter == 10){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                      }
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){
                    setState(() {
                      counter--;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
