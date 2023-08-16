import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/models/chat.dart';
import 'package:semana7_whatsapp_clone/pages/chat_detail.dart';

class ItemChatWidget extends StatelessWidget {
  final ChatModel chatModel;

  const ItemChatWidget({
    super.key,
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatDetailPage()),
          );
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            chatModel.avatarUrl,
          ),
          radius: 23,
        ),
        title: Text(
          chatModel.username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? 'Digitando...' : chatModel.message,
          style: TextStyle(
            color: chatModel.isTyping ? const Color(0xff25D366) : Colors.grey,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                color: chatModel.countMessage > 0
                    ? const Color(0xff25D366)
                    : Colors.grey,
                fontSize: 10,
              ),
            ),
            chatModel.countMessage > 0
                ? CircleAvatar(
                    radius: 11,
                    backgroundColor: const Color(0xff25D366),
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
