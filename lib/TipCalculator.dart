import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textBoxWidth = screenWidth * 0.99;
    Color customColor = Color(int.parse('F4F7FAFF', radix: 16)).withOpacity(1.0);
    Color customColorback = Color(int.parse('D6EAF8', radix: 16)).withOpacity(1.0);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tip Calculator',
            style: TextStyle(
              color: Colors.black, // Text color
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white, // App bar background color
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Container(
              color: customColorback,
              width: textBoxWidth,
              // padding: EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Text(
                    'Total Bill',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\$0.00',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Persons',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Tip Amount',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      // Text(
                      //   '\$20',
                      //   style: TextStyle(
                      //     fontSize: 34,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.black,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


