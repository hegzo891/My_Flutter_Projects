import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff491070),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("You answered X out of Y questions correctly"),
              SizedBox(height: 30,),
              Text("You answered X out of Y questions correctly"),
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text("Restart"))

            ],
          ),
        ),
      ),
    );
  }
}
