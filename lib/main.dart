import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Center(
          child: buildRow()
        ),
      ),
    );
  }

  Widget buildRow() =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(child:
        Image.asset('images/Dart_Logo.jpg'),
        ),
        Expanded(
          flex: 2,
          child:
        Image.asset('images/Python_Logo.jpg'),
        ),
       Expanded(child:
        Image.asset('images/Flutter_Logo.jpg'),
       ),
      ],
    );


}
