import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'model.dart';

class Details extends StatelessWidget {

  final Nasa nasa;

  const Details({Key key, this.nasa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nasa.title),
        backgroundColor: Colors.black,),
        body: ListView(
        children: [
          Stack(
        children:[
          Container(
            child: Center(child:
              CircularProgressIndicator(),),),
          Hero(
              tag:nasa.date,
              child: FadeInImage.memoryNetwork
                (placeholder: kTransparentImage,
                  image: nasa.url,
              fit: BoxFit.contain),
    )
    ],
    ),
        Padding(padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                nasa.date ,
                style: TextStyle(
                    fontSize: 12.0 ,
                    fontWeight: FontWeight.normal,
              fontStyle:  FontStyle.italic),
              ),
              Container(width:  200,
                child: Text("c ${nasa.copyright}", softWrap: true,
                  textAlign: TextAlign.end,
                style:TextStyle(fontSize: 12.0 ,
                    fontWeight: FontWeight.normal,
                    fontStyle:  FontStyle.italic),),)
            ],
          ),
    ),
          Padding(padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0,16.0),
          child: Text(nasa.description ,style: TextStyle(
              fontSize: 16.0 , fontWeight: FontWeight.bold),),)
    ],
      ),
    );
  }
}

