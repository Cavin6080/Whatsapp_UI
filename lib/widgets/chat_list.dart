import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/info.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/sender_messages_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //my message card
          return MyMessageCard(
            message: messages[index]["text"].toString(),
            time: messages[index]["time"].toString(),
          );
        }
        //sender message card
        return SenderMessagesCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
        );
      },
    );
  }
}
