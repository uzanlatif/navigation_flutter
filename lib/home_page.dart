import 'package:flutter/material.dart';
import 'package:twitterclone/note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          centerTitle: true,
          title: const Text("Notepad Hello"),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              createCard("Naruto","https://pict-a.sindonews.net/dyn/360/pena/news/2022/01/27/700/669527/7-kelemahan-terbesar-naruto-uzumaki-di-serial-naruto-kno.jpg"),
              createCard("Akatsuki","https://imgx.sonora.id/crop/0x0:0x0/700x465/photo/2021/08/22/akatsuki-rankedjpg-20210822082530.jpg"),
              createCard("Spongebob","https://statik.tempo.co/data/2018/11/29/id_800478/800478_720.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget createCard(String isiNote, String source) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NotePage(judul: isiNote, gambar: source);
        }));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(
                source,
                width: 120),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              isiNote,
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
