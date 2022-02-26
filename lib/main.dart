import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:secuuth_flutter_package/secuuth_flutter_package.dart';

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
      ),
      // body: const SecuuthAuth(keyId: '63576492-4af2-4363-919b-1b47b80b1bcb', secretId: 'TlD3JgkSt70Iq5uv'),
      body: Container(
        child: const SecuuthAuth(keyId: 'a72ae37a-b3ea-4e39-a783-e862ba774eee', secretId: '2oUswmK2NsdaQj9Q')
        // child: const SecuuthAuth(keyId: '63576492-4af2-4363-919b-1b47b80b1bcb', secretId: 'TlD3JgkSt70Iq5uv')
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
  //
  //
  //         // body: const SecuuthAuth(keyId: '63576492-4af2-4363-919b-1b47b80b1bcb', secretId: 'TlD3JgkSt70Iq5uv'),
  //
  //     ),
  //     // home: const SecuuthAuth(keyId: 'a72ae37a-b3ea-4e39-a783-e862ba774eee', secretId: '2oUswmK2NsdaQj9Q')
  //   );
  // }


