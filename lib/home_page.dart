import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1, num2, sum;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0'); 

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear() {
    setState(() {
      t1.text ='0';
      t2.text ='0';
      sum = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
        backgroundColor: Colors.red[600],
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Output: $sum',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            )
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter Number 1'),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter Number 1'),
              controller: t2,
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: doAdd,
                  child: Text('+'),
                  color: Colors.greenAccent,
              ),
                MaterialButton(
                  onPressed: doSub,
                  child: Text('-'),
                  color: Colors.greenAccent,
              ),
            Padding(
              padding: EdgeInsets.only(top: 20.0))
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: doMul,
                  child: Text('*'),
                  color: Colors.greenAccent,
                  ),
                 MaterialButton(
                  onPressed: doDiv,
                  child: Text('/'),
                  color: Colors.greenAccent,
                ),
              ],
            
            ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[ MaterialButton(
                    onPressed: doClear,
                    child: Text('Clear'),
                    color: Colors.greenAccent,
                  ),
             
             ]
            )
        
           ] ),
      )  );
  }
}