import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xff151515),
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              leading: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              title: Text(
                "Kategoriyalar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Color(0xff151515),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    'Tags',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    'Choose up to 3 tags that describe you the best',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )));
  }
}
