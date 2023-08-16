import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name of the user here here here hre reh',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Last seen',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: const [
          Icon(Icons.videocam),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Stack(
        children: [
          //Fondo
          Container(
            color: Colors.black.withOpacity(0.07),
          ),
          //Listado de mensajes

          //Input del nuevo mensaje
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Type a message',
                      hintStyle:
                          const TextStyle(fontSize: 16, color: Colors.black38),
                      prefixIcon:
                          const Icon(Icons.emoji_emotions, color: Colors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.only(left: 15),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            padding: const EdgeInsets.only(right: 5),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Send message');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(13),
                    margin: const EdgeInsets.only(left: 5),
                    decoration: const BoxDecoration(
                      color: Color(0xff075E54),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
