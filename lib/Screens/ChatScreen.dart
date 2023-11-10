import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ChatBubble(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.all(10),
                backGroundColor: Colors.green,
                clipper: ChatBubbleClipper2(
                  type: BubbleType.sendBubble,
                ),
                child: Text(
                  "test",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(),
              ),
              ChatBubble(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                backGroundColor: Colors.green,
                clipper: ChatBubbleClipper2(
                  type: BubbleType.receiverBubble,
                ),
                child: Text(
                  "test",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
