import 'package:flutter/material.dart';
import 'package:wppb/week5/percobaan/data/api/api_service.dart';
import 'package:wppb/week5/percobaan/data/model/article.dart';

class Percobaan extends StatelessWidget {
  const Percobaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _service = Module5Service1();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan'),
      ),
      body: FutureBuilder<List<Module5Model1>>(
        future: _service.getAllNews(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].title),
                    );
                  });
            }
          } else {
            return Text('Error: ${snapshot.error}');
          }
        },
      ),
    );
  }
}

class PercobaanDetail extends StatelessWidget {
  const PercobaanDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Latihan extends StatelessWidget {
  const Latihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LatihanDetail extends StatelessWidget {
  const LatihanDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
