import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:secqure_flutter_sdk/secqure_flutter_sdk.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink, // background
            onPrimary: Colors.white, // foreground
          ),
          child: const Text('Sign in'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.pink
      )
      body: Container(
        child: const SecuuthAuth(keyId: 'KEY_ID', secretId: 'SECRET_ID') // Replace text with your ID

      ),
    );
  }
}
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.pink,
  //     ),
  //     home: Scaffold(
  //         appBar: AppBar(
  //           title: const Text("My Demo App"),
  //           leading: IconButton(
  //             icon: Icon(Icons.arrow_back, color: Colors.black),
  //             onPressed: () => Navigator.of(context).pop(),
  //           ),
  //         ),
  //   body: Center(
  //   child: ElevatedButton(
  //   child: const Text('Open route'),
  //   onPressed: () {
  //   Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const SecondRoute()),
  //   );
  //   },
  //   ),

  //   );
  // }


