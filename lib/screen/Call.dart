import 'package:firebase_login/model/calls.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context , index) => Column(
         children: <Widget>[
           Divider(height: 5.0,),
         ListTile(
           onTap: (){},
           trailing: Icon(Icons.videocam,color: new Color(0xff075E54),),
           leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(callData[index].imageUrl),
            ),
           title: Text(callData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
           subtitle: Row(
             children: <Widget>[
               Icon(Icons.arrow_downward,color: new Color(0xff25D366),),
               Text(callData[index].time,style: TextStyle(color: Colors.grey,fontSize: 14.0),)
             ],
           ),
         )
         ],
      ),
    );
  }
}