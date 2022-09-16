// ignore_for_file: prefer_const_constructors

import 'package:careparty/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      title: 'Care Party',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MainPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => const HomeScreen(),
        '/casus': (context) => const Casus(),
        '/students': (context) => const Students(),
        '/profile': (context) => const Profile(),
      },
    ),
  );
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.bottomCenter,
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
                    ]))));
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             backgroundColor: Colors.green.shade700,
//             title: const Text("Care Party")),
//         body: Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//                 color: Colors.green.shade700,
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Builder(
//                           builder: (context) => TextButton(
//                               style: TextButton.styleFrom(
//                                   primary: Colors.green.shade700),
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/home');
//                               },
//                               child: const SizedBox(
//                                   width: 50,
//                                   height: 50,
//                                   child: Icon(Icons.home_outlined,
//                                       color: Colors.white)))),
//                       Builder(
//                           builder: (context) => TextButton(
//                               style: TextButton.styleFrom(
//                                   primary: Colors.green.shade700),
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/casus');
//                               },
//                               child: const SizedBox(
//                                   width: 50,
//                                   height: 50,
//                                   child: Icon(Icons.folder_open_outlined,
//                                       color: Colors.white)))),
//                       Builder(
//                           builder: (context) => TextButton(
//                               style: TextButton.styleFrom(
//                                   primary: Colors.green.shade700),
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/students');
//                               },
//                               child: const SizedBox(
//                                   width: 50,
//                                   height: 50,
//                                   child: Icon(Icons.people_outline_rounded,
//                                       color: Colors.white)))),
//                       Builder(
//                           builder: (context) => TextButton(
//                               style: TextButton.styleFrom(
//                                   primary: Colors.green.shade700),
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/profile');
//                               },
//                               child: const SizedBox(
//                                   width: 50,
//                                   height: 50,
//                                   child: Icon(Icons.person_outline,
//                                       color: Colors.white))))
//                     ]))));
//   }
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: _emailController.text.trim(),
//       password: _passwordController.text.trim(),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: SafeArea(
//             child: Center(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//               // Welkom tekst
//               const Text(
//                 'Welkom bij Care Party!',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                 ),
//               ),
//               const Text(
//                 'Vul hieronder uw inloggegevens in',
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Email veld
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         border: Border.all(color: Colors.white),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextField(
//                           controller: _emailController,
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: 'E-Mail')))),
//               // Wachtwoord veld
//               const SizedBox(height: 20),
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         border: Border.all(color: Colors.white),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextField(
//                           controller: _passwordController,
//                           decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Wachtwoord')))),
//               // Linebreak
//               const SizedBox(
//                 height: 20,
//               ),
//               // Log in Knop
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: GestureDetector(
//                       onTap: signIn(),
//                       child: Container(
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             color: Colors.green.shade700,
//                             borderRadius: BorderRadius.circular(12)),
//                         child: const Center(
//                           child: Text(
//                             'Log in',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18),
//                           ),
//                         ),
//                       ))),
//               const SizedBox(
//                 height: 20,
//               ),

//               // Registreer knop
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                         color: Colors.green.shade700,
//                         borderRadius: BorderRadius.circular(12)),
//                     child: const Center(
//                       child: Text(
//                         'Registreren',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18),
//                       ),
//                     ),
//                   )),
//             ]))));
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            title: const Text("Home")));
  }
}

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            title: const Text("Studenten")));
  }
}

class Casus extends StatelessWidget {
  const Casus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            title: const Text("Casussen")));
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green.shade700,
            title: const Text("Profiel")));
  }
}
