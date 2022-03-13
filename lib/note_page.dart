import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  final String judul;
  final String gambar;

  const NotePage({Key? key, required this.judul, required this.gambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text('Here what you got'),
      ),
      body: Column(children: [
        _isiCard(),
      ]),
    );
  }

  Widget _isiCard() {
    return InkWell(
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(gambar, width: 120),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              judul,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
