import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(value: 1, groupValue: _value, onChanged:(abc){
setState(() {
  _value=1 ;
});
                }),
                Text('Engineer')
              ],
            ),
            Row(
              children: [
                Radio(value: 2, groupValue: _value, onChanged:(abc){
                  setState(() {
                    _value=2 ;
                  });
                }),
                Text('Police')
              ],
            ),
            Row(
              children: [
                Radio(value: 3, groupValue: _value, onChanged:(abc){
                  setState(() {
                    _value=3;
                  });
                }),
                Text('Doctor')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: Text('SUbmit'))
          ],
        ),
      ),
    );
  }
}
