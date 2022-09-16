// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            title: Text("Care Party")),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ingelogd als ${user.email}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton.icon(
                  onPressed: () => FirebaseAuth.instance.signOut(),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 32,
                  ),
                  label: Text(
                    'Uitloggen',
                    style: TextStyle(fontSize: 24),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              color: Colors.green.shade700,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Builder(
                        builder: (context) => TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.green.shade700),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.home_outlined,
                                    color: Colors.white)))),
                    Builder(
                        builder: (context) => TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.green.shade700),
                            onPressed: () {
                              Navigator.pushNamed(context, '/casus');
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.folder_open_outlined,
                                    color: Colors.white)))),
                    Builder(
                        builder: (context) => TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.green.shade700),
                            onPressed: () {
                              Navigator.pushNamed(context, '/students');
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.people_outline_rounded,
                                    color: Colors.white)))),
                    Builder(
                        builder: (context) => TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.green.shade700),
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(Icons.person_outline,
                                    color: Colors.white))))
                  ])),
        ));
  }
}
