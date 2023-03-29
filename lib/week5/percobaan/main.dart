import 'package:flutter/material.dart';

class Percobaan extends StatefulWidget {
  const Percobaan({Key? key}) : super(key: key);

  @override
  State<Percobaan> createState() => _PercobaanState();
}

class _PercobaanState extends State<Percobaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percobaan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
