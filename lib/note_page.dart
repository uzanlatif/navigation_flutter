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
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _isiCard(),
            _caption(),
            _navPop(context),
          ],
        ),
      ),
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

  Widget _caption() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 40,
        top: 20,
        right: 40,
        bottom: 20,
      ),
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor eros ac lacinia laoreet. Suspendisse potenti. Phasellus tortor ex, sagittis et rutrum vitae, condimentum in dolor. Praesent pharetra metus ut feugiat ultrices. Etiam vitae leo ultrices, commodo dui sit amet, ultricies arcu. Donec non ornare mauris, imperdiet dictum lorem. Phasellus ullamcorper sapien elit, efficitur pretium est cursus eget. "),

    );
  }

  Widget _navPop(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple.shade300, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pop Naw'),
        ),
      ],
    );
  }
}
