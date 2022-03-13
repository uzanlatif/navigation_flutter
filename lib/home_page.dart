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
          title: const Text("Today Schedule"),
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
              createCard("Playing w/ Cat","https://img-9gag-fun.9cache.com/photo/aGpdDgw_460s.jpg"),
              createCard("Gaming","https://i.redd.it/yrecb4xm7wh31.jpg"),
              createCard("Study","https://c.tenor.com/oezioEDfJ3sAAAAd/crying-cry.gif"),
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
