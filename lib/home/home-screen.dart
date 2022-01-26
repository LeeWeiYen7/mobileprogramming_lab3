import 'package:com_262212_lab3/constants.dart';
import 'package:com_262212_lab3/home/body.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Claypot House'), 
        
        ),   
        body: Body() );
  }
  }
