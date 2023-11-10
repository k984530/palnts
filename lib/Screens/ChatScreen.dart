import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:plants/Component/Chatbubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          plantBubble('안녕?'),
          userBubble("응응 반가워~"),
          Spacer(),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25)),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.green[100],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, bottom: 10),
                alignment: Alignment.center,
                child: Icon(Icons.send),
              )
            ],
          ),
        ],
      ),
    );
  }
}
