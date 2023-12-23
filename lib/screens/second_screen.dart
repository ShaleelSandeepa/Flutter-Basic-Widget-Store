import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> names = [
    "Amal",
    "Nimal",
    "Kamal",
    "Namal",
    "Jagath",
    "Pawan",
    "Sunil"
  ];

  List<Map<String, dynamic>> students = [
    {"name": "Amal", "age": 25, "city": "Galle"},
    {"name": "Nimal", "age": 22, "city": "Colombo"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      //     child: ListView.builder(
      //   itemCount: students.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 80,
      //         color: Colors.amber.shade200,
      //         child: Center(
      //             child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text("${students[index]["name"]}"),
      //             Text("${students[index]["age"]}"),
      //             Text("${students[index]["city"]}"),
      //           ],
      //         )),
      //       ),
      //     );
      //   },
      // )),

      // child: Column(
      //   children: List.generate(
      //     students.length,
      //     (index) => Text("${students[index]["name"]}"),
      //   ),
      // ),

      child: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.amber,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ));
  }
}
