import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_ink_well/image_ink_well.dart';

import 'details.dart';
import 'model.dart';

class NasaCard extends StatelessWidget {
  final Nasa nasa;

  const NasaCard({Key key, this.nasa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16.0,
      margin: EdgeInsets.all(12.0),
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 400,
                height: 300,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                  ),
                ),
              ),
              Hero(
                tag: nasa.date,
                child: RoundedRectangleImageInkWell(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(nasa: nasa),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(
                    (12.0),
                  ),
                  height: 300,
                  width: 400,
                  fit: BoxFit.cover,
                  backgroundColor: Colors.grey,
                  image: CachedNetworkImageProvider(nasa.url),
                ),
              )
            ],
          ),
          Text(
            nasa.title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

