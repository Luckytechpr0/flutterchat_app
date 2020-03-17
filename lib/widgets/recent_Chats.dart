import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                      child: Container(
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              ),
              ),
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index){
                  final Message chat = chats[index];
                return Row(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(radius: 35.0, 
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                        
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chat.sender.name,
                              ),
                         Text(chat.text),
                          ],
                        ),
                      ],
                    ),
                  Column(children: <Widget>[
                    Text(chat.time),
                    Text('NEW'),
                  ],)
                  ],
                );
                }
                ),
              ),
          );
      
   
  }
}