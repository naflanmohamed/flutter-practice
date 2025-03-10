import 'package:flutter/cupertino.dart';
void main(){
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Example"),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text("Press Me",),
          onPressed: (){
            print("Cupertino Button Pressed");
          },
        ),
      ),
    ),
  ));
}