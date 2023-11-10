import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

plantBubble(String text) => Row(
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
            text,
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
    );

userBubble(String text) => Row(
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
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
