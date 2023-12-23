import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_explain/screens/grid_screen.dart';
import 'package:widget_explain/screens/second_screen.dart';
import 'package:widget_explain/screens/ui_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController = TextEditingController();
  bool? agreement = false;
  bool wifi = false;
  double brightness = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Widget Explain App"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // align verticaly
            children: [
              Text(
                "Flutter Text",
                textAlign: TextAlign.center,
                // use google fonts here
                style: GoogleFonts.aclonica(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.adb,
                size: 100,
                color: Colors.greenAccent,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.airplanemode_on_rounded,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              CupertinoSwitch(value: true, onChanged: (val) {}),
              Switch(
                value: wifi,
                onChanged: (value) {
                  setState(() {
                    wifi = value;
                    print(wifi);
                  });
                },
              ),
              Text("Brightnes - ${brightness.toInt()}"),
              Slider(
                max: 100,
                value: brightness,
                onChanged: (value) {
                  setState(() {
                    brightness = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: agreement,
                    onChanged: (value) {
                      setState(() {
                        agreement = value;
                        print(agreement);
                      });
                    },
                  ),
                  const Text("Remember me"),
                ],
              ),
              Wrap(
                children: [
                  Chip(
                    label: const Text("Horror"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: const Text("Thriller"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: const Text("Action"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: const Text("Romantic"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: const Text("Comedy"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: const Text("Anime"),
                    backgroundColor: Colors.blue.shade100,
                    deleteIcon: const Icon(Icons.close),
                    onDeleted: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                          label: const Text("Email"),
                          hintText: "Enter Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: const Text("Password"),
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                      ),
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text("Create Account")),
                    FilledButton(
                      onPressed: () {
                        print(textEditingController.text);
                      },
                      // style: ButtonStyle(
                      //     backgroundColor:
                      //         MaterialStateProperty.all<Color>(Colors.green)),
                      child: const Text("Register"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondScreen()));
                        },
                        child: const Text("Go to Second Screen")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GridScreen()));
                        },
                        child: const Text("Go to Grid Screen")),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyUi()));
                      },
                      child: const Text("Go to UI Screen"),
                    ),
                    const Text("Custom Button"),
                    GestureDetector(
                      onTap: () {
                        print("pressed");
                      },
                      onLongPress: () {
                        print("long press");
                      },
                      onDoubleTap: () {
                        print("double tap");
                      },
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(50),
                            // make a shadow
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.black.withOpacity(0.2),
                            //     spreadRadius: 1,
                            //     blurRadius: 8,
                            //     offset: const Offset(0, 1),
                            //   )
                            // ],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Download",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton(
                      onPressed: () {
                        // Handle button click here
                        print("pressed");
                      },
                      onLongPress: () {
                        print("long pressed");
                      },
                      style: FilledButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.redAccent,
                        elevation: 2,
                        // backgroundColor: MaterialStateProperty.all<Color>(
                        //     Colors.redAccent),
                      ),
                      child: const SizedBox(
                        width: 100,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Download",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Image.network(
                "https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_639c3c682573ede2ef7e67c9_Best_Flutter_app_development_tools_and_app_builders_OG_image_ac87c76436.jpg",
                fit: BoxFit.cover,
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/flutter.png",
                width: 300,
              ),
              const SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                // color: Colors.redAccent, // can move this in to BoxDecoration
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/flutter2.png"),
                      fit: BoxFit.cover,
                    )),
                child: const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
