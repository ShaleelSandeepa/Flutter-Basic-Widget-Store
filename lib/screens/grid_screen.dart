import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<Map<String, dynamic>> students = [
    {"name": "Amal", "age": 25, "city": "Galle"},
    {"name": "Nimal", "age": 22, "city": "Colombo"},
    {"name": "kamal", "age": 22, "city": "Kandy"},
    {"name": "Saman", "age": 22, "city": "Matara"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 5,
        //     crossAxisSpacing: 5,
        //     childAspectRatio: 0.6,
        //   ),
        //   children: [
        //     Container(
        //       height: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       height: 100,
        //       color: Colors.black,
        //     ),
        //   ],
        // ),
        child: GridView.builder(
            itemCount: students.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("${students[index]["name"]}")),
              );
            }),
      ),
    );
  }
}
