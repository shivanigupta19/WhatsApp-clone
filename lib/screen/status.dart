import 'package:firebase_login/model/chat.dart';
import 'package:firebase_login/reuseable/wcards.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
       Wcards(
            "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500","My Status","Tap to add status"),
      Divider(
         height: 10.0,
         color: Colors.grey,
      ),
      Heading(
        "Recent updates"
      ),
      Wcards(messageData[4].imageUrl, messageData[4].name, "30 minutes ago"),
      Wcards(messageData[0].imageUrl, messageData[0].name, "Today, 2:18 pm"),
      Wcards(messageData[3].imageUrl, messageData[3].name, "Today, 2:11 pm"),
      Divider(
         height: 10.0,
         color: Colors.grey,
        // thickness: 15.0,
      ),
      Heading(
        "Viewed updates"
      ),
      Wcards(messageData[5].imageUrl, messageData[5].name, "Today, 11:25 am"),
      Wcards(messageData[6].imageUrl, messageData[6].name, "Today, 8:00 am"),
      ],
      
    );
  }
}

class Heading extends StatelessWidget {

  final String heading;

  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: EdgeInsets.only(left: 5.0 , top: 5.0),
        child: Text(heading,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.grey)),
      ),
      
    );
  }
}