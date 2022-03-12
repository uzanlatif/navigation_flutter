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
          title: const Text("Notepad Hello"),
          automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          createCard("Bapak Pocung"),
          createCard("Naruto"),
          createCard("Spongebob"),
        ]),
      ),
    );
  }

  Widget createCard(String isiNote) {
    return InkWell(
    onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return NotePage(value: isiNote);
      }));
    },
    child: Card(

    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),

    ),
      margin:const EdgeInsets.all(10),
      child: Row(

        children: [
          Image.network(
              "https://th.bing.com/th/id/OIP.EC_Zs8-9hcT0rmzWZXhJ4wHaHa?pid=ImgDet&rs=1",
              width: 90
          ),

          Text(isiNote),

        ],
      ),
    ),
    );
  }
}
