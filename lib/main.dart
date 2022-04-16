import 'package:app_1/about.dart';
import 'package:app_1/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainApp());
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yuk Kenalan"),
        elevation: 7.0,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Text("Home"),
            Text("About"),
            Text("Sertifikat"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [home(), about(), Course()],
      ),
    );
  }
}

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return LargePage();
        } else {
          return MobilePage();
        }
      },
    );
  }
}

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/kotlin.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Memulai Pemrograman Dengan Kotlin",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/python.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Memulai Pemrograman Dengan Python",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/gambarku.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Membangun Arsitektur Cloud di AWS",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 50,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LargePage extends StatelessWidget {
  const LargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/kotlin.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Memulai Pemrograman Dengan Kotlin",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/python.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Memulai Pemrograman Dengan Python",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "images/gambarku.jpg",
                    width: 412,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Membangun Arsitektur Cloud di AWS",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Course Dicoding",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              Container(width: 5),
                              const Text(
                                "5",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
