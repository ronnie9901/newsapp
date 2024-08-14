
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/NewsApp/view/screen/homepage.dart';
class splace extends StatelessWidget {
  const splace({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
      () {

         Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
      },
     );
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://t3.ftcdn.net/jpg/02/95/88/08/360_F_295880868_ZbSZuCmoAAXfHx7SLHKPtyxFsebcO5So.jpg'))),
     ),
    );
    
  }
}
