import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/models/chat_message.dart';

class ChatMessageWidget extends StatelessWidget {
  ChatMessageModel message;

  ChatMessageWidget({
    super.key,
    required this.message,
  });

  // bool itsMe = message.messageType == "me" ? true : false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          message.messageType == "me" ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: message.messageType == "me"
              ? const Color(0xffE3FFC4)
              : Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(20),
            bottomLeft: const Radius.circular(20),
            topRight: message.messageType == "me"
                ? const Radius.circular(20)
                : const Radius.circular(0),
            topLeft: message.messageType == "me"
                ? const Radius.circular(0)
                : const Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10.0,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Text(message.messageContent),
      ),
    );
  }
}
