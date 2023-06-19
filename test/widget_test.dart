import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Counter value is 5!'),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } else if (counter == 10) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
      }
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value: $counter',
              style: TextStyle(fontSize: 24),
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
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: incrementCounter,
                    child: Text('Increment'),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: decrementCounter,
                    child: Text('Decrement'),
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
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'Congratulations! You reached 10!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
'Counter value',
style: TextStyle(fontSize: 25),
),
Text(
'$count',
style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
),
Padding(
padding: const EdgeInsets.all(8.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
SizedBox(
width: 200,
child: ElevatedButton(
onPressed: () {
setState(() {
count++;

if (count == 5) {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: const Text('Counter Alert !'),
content: Text('Counter value is $count!',style: TextStyle(fontSize: 20),),
actions: [
TextButton(
onPressed: () {
Navigator.pop(context);
},
child: Text('ok'))
],
);
});
}

});
if(count == 10){
Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
}
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.green),
child: Icon(Icons.add))),
SizedBox(
width: 20,
),
SizedBox(
width: 100,
child: ElevatedButton(
onPressed: () {
setState(() {
count--;
});
},
style: ElevatedButton.styleFrom(
backgroundColor: Colors.red),
child: Icon(Icons.remove))),
],
),
)
],
),
