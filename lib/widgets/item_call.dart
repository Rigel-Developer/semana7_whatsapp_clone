import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/200'),
          radius: 26,
        ),
        title: const Text('username'),
        subtitle: const Row(
          children: [
            Icon(
              Icons.call_made,
              color: Colors.green,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text('Yesterday, 20:00'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.call,
          ),
          color: Colors.green,
          onPressed: () {},
        ),
      ),
    );
  }
}
