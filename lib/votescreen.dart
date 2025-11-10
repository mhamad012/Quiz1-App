import 'package:flutter/material.dart';

class Votescreen extends StatefulWidget {
  const Votescreen({super.key});

  @override
  State<Votescreen> createState() => _VotescreenState();
}

class _VotescreenState extends State<Votescreen> {
  int counter = 0;
  int counter2 = 0;
  String icon = "";

  void votetea() {
    setState(() {
      counter++;
      icon = "🍵";
    });
  }

  void votcoffee() {
    setState(() {
      counter2++;
      icon = "☕";
    });
  }

  void reset() {
    setState(() {
      counter = 0;
      counter2 = 0;
      icon = "❔";
    });
  }

  // @override
  // void setState() {
  //   counter += 0;
  //   counter2 += 0;
  //   super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(icon, style: TextStyle(fontSize: 30)),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsetsGeometry.only(bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: votetea,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(249, 30, 204, 131),
                      ),
                      child: Text(
                        "Vote Tea",
                        style: TextStyle(color: Color.fromARGB(249, 1, 87, 1)),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: votcoffee,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                      ),
                      child: Text(
                        "Vote Coffee",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 16, bottom: 20),
                child: ElevatedButton(
                  onPressed: reset,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 33, 65, 243),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text("Tea Vote: $counter"),
              SizedBox(height: 3),
              Text("Coffee Vote: $counter2"),
            ],
          ),
        ),
      ),
    );
  }
}
