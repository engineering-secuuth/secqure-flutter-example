import 'package:flutter/material.dart';
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
              //Replace placeholders with your API key and Secret key from dashboard
              MaterialPageRoute(builder: (context) => const SecqureAuth(keyId: 'a72ae37a-b3ea-4e39-a783-e862ba774eee', secretId: '2oUswmK2NsdaQj9Q')),
            );
          },
        ),
      ),
    );
  }
}
