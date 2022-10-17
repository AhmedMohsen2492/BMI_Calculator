import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{
  final int result ;
  final String state ;

  BmiResultScreen({
    required this.result,
    required this.state,
  });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        backgroundColor: Color(0xff0a0e20),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Your Result',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Color(0xff0a0e20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Result : $result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Category : $state',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
