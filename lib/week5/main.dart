import 'package:flutter/material.dart';
import 'package:wppb/week5/percobaan/main.dart';

class Week5 extends StatefulWidget {
  const Week5({Key? key}) : super(key: key);

  @override
  State<Week5> createState() => _Week5State();
}

class _Week5State extends State<Week5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minggu 5'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Percobaan'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Percobaan()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
