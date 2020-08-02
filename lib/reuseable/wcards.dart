import 'package:flutter/material.dart';

class Wcards extends StatelessWidget {

  final String name , imageurl , time;
  Wcards(this.imageurl , this.name , this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageurl),
        maxRadius: 25,
        foregroundColor: Colors.orangeAccent,

      ),
      title: Text(name , style: TextStyle(
        fontWeight: FontWeight.bold
      )),
      subtitle: Text(time),
      
      
    );
  }
}