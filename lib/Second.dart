import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: EdgeInsets.only(left: 33),
              child: Icon(Icons.arrow_back)),
          elevation: 1,
          backgroundColor: Color(0xff151515),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color(0xff151515),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 48, right: 20, left: 20),
              child: Divider(
                color: Color(0xff2E2E2E),
                thickness: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, top: 16, right: 308),
              child: Text(
                'Tags',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 32, top: 8),
              child: Text(
                'Choose up to 3 tags that describe you the best',
                style: TextStyle(fontSize: 14, color: Color(0xff4C4B4F)),
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 8),
                  itemCount: 15,
                  itemBuilder: ((context, index) => Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 1, left: 8),
                          width: 151,
                          height: 106,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.zdnet.com/a/img/resize/846b4c4d075dd9a5d7f4961767e6906c619020d8/2020/07/21/8f8c5e3b-1eb7-4100-b4d8-0059c89cd8e6/istock-1213497796-2.jpg?auto=webp&width=1200'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.only(top: 170, left: 16),
                            child: Text(
                              'Business',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ))),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    left: 81,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Didnt find your tag?',
                          style:
                              TextStyle(color: Color(0xff4C4B4F), fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, right: 73),
                        child: Text(
                          'Add your own',
                          style: TextStyle(
                              color: Color.fromARGB(255, 212, 29, 203),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 80, left: 80),
                  child: FloatingActionButton.extended(
                    backgroundColor: Color.fromARGB(255, 202, 85, 122),
                    foregroundColor: Color.fromARGB(255, 107, 28, 55),
                    onPressed: (() {}),
                    label: Text(
                      'Save and continue',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
