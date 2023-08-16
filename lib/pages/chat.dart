import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/data/data_dummy.dart';
import 'package:semana7_whatsapp_clone/widgets/item_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ItemChatWidget(
          chatModel: chats[index],
        );
      },
    );
  }
}
