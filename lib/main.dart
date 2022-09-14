import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green.shade700,
                title: const Text("Care Party")),
            body: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    color: Colors.green.shade700,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Builder(
                              builder: (context) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green.shade700),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(Icons.home_outlined,
                                          color: Colors.white)))),
                          Builder(
                              builder: (context) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green.shade700),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Casus(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                          Icons.folder_open_outlined,
                                          color: Colors.white)))),
                          Builder(
                              builder: (context) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green.shade700),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Students(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                          Icons.people_outline_rounded,
                                          color: Colors.white)))),
                          Builder(
                              builder: (context) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green.shade700),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Profile(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(Icons.person_outline,
                                          color: Colors.white))))
                        ])))));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green.shade700,
                title: const Text("Home"))));
  }
}

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green.shade700,
                title: const Text("Studenten"))));
  }
}

class Casus extends StatelessWidget {
  const Casus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green.shade700,
                title: const Text("Casussen"))));
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green.shade700,
                title: const Text("Profiel"))));
  }
}
