import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  double num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void Add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void Sub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void Mul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void Div() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      if(num2 == 0)
        sum = 0;
      else
        sum = num1 / num2;
    });
  }
  void Clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          children: <Widget>[
            new Text("Output : $sum", style: new TextStyle(fontSize: 20.0, color: Colors.deepPurple,fontWeight: FontWeight.bold),),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: Add,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: Sub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: Mul,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.greenAccent,
                  onPressed: Div,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: Clear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}