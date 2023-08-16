class ChatModel {
  String avatarUrl;
  String message;
  String username;
  String time;
  int countMessage;
  bool isTyping;

  ChatModel({
    required this.avatarUrl,
    required this.message,
    required this.username,
    required this.time,
    required this.countMessage,
    required this.isTyping,
  });
}
