import 'package:flutter/material.dart';
import 'package:json_real_app_by_me/model/data.dart';

class Details extends StatefulWidget {
  Data data;
  Details({this.data});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            child: Image.network(widget.data.url),
          ),
          ListTile(
            title: Text(
              widget.data.title,
              style: TextStyle(color: Colors.black),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
