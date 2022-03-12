import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {

  final String value;

  const NotePage({Key? key,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note App'),
      ),
      body: Column(children:[
          _isiCard(),
      ]
      ),
    );
  }

  Widget _isiCard(){
    return InkWell(
      onTap: ()
      {}
      ,
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

            Text(value),
          ],
        ),
      ),
    );
  }
}
