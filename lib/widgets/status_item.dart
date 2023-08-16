import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/util/border_status.dart';

class StatusItemWidget extends StatelessWidget {
  const StatusItemWidget({
    super.key,
    required this.heightStatusBorder,
    required this.radiusCircleAvatar,
    required this.numberOfStories,
  });

  final double heightStatusBorder;
  final double radiusCircleAvatar;
  final int numberOfStories;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          SizedBox(
            width: heightStatusBorder,
            height: heightStatusBorder,
            child: CustomPaint(
              painter: DottedBorder(
                  numberOfStories: numberOfStories, spaceLength: 4),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: radiusCircleAvatar,
                backgroundImage: const NetworkImage(
                    'https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
          )
        ],
      ),
      title: const Text(
        "Contacto 1",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text("Today, 12:30 PM"),
    );
  }
}
