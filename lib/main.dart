import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: ludo(),
  ));
}

class ludo extends StatefulWidget {
  const ludo({super.key});

  @override
  State<ludo> createState() => _ludoState();
}

class _ludoState extends State<ludo> {
  int loadnumbers = 6;
  int loadnumber = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      appBar: AppBar(
        title: Text("ludoapp"),
        backgroundColor: Colors.indigo[500],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: GestureDetector(
                  child: Image.asset('images/dice$loadnumbers.png'),
                  onTap: () {
                    print("chicked");
                    setState(() {
                      loadnumbers = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: InkWell(
                  child: Image.asset('images/dice$loadnumber.png'),
                  splashColor: Colors.amber,
                  onTap: () {
                    print("ludo");
                    setState(() {
                      loadnumber = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
