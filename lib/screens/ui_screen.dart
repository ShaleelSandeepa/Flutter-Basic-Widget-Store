import 'package:flutter/material.dart';

class MyUi extends StatelessWidget {
  const MyUi({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(),
              CustomContainer(
                size: size,
                title: "Paste Text",
                subTitle: "Input or paste your text",
                icon: Icons.text_fields_outlined,
                colors: [Colors.indigo.shade400, Colors.indigo.shade800],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                size: size,
                title: "Import File",
                subTitle: "Use text file from storage",
                icon: Icons.text_increase_outlined,
                colors: [Colors.orange.shade400, Colors.orange.shade800],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "OPEN RECENT",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      child: SizedBox(
                        width: size.width,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Final Presentation",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("07 December 2023")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      child: SizedBox(
                        width: size.width,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Final Presentation",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("07 December 2023")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 3,
                      child: SizedBox(
                        width: size.width,
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Final Presentation",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("07 December 2023")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.size,
      required this.title,
      required this.subTitle,
      required this.colors,
      required this.icon});

  final Size size;
  final String title;
  final String subTitle;
  final List<Color> colors;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 200,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            subTitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
