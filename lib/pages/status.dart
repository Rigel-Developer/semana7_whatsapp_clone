import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/widgets/status_item.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});
  final double radiusCircleAvatar = 25.0;
  @override
  Widget build(BuildContext context) {
    double heightStatusBorder = ((radiusCircleAvatar * 2) * 1.11);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              print('My Status');
            },
            leading: Stack(
              // alignment: ,
              clipBehavior: Clip.none,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/634021/pexels-photo-634021.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                Positioned(
                  bottom: 2,
                  right: -1,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('Tap to add status update'),
          ),
          const SizedBox(height: 10),
          const ListTile(
            title: Text(
              'Recent updates',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          StatusItemWidget(
            heightStatusBorder: heightStatusBorder,
            radiusCircleAvatar: radiusCircleAvatar,
            numberOfStories: 1,
          ),
          StatusItemWidget(
            heightStatusBorder: heightStatusBorder,
            radiusCircleAvatar: radiusCircleAvatar,
            numberOfStories: 2,
          ),
          StatusItemWidget(
            heightStatusBorder: heightStatusBorder,
            radiusCircleAvatar: radiusCircleAvatar,
            numberOfStories: 3,
          ),
          StatusItemWidget(
            heightStatusBorder: heightStatusBorder,
            radiusCircleAvatar: radiusCircleAvatar,
            numberOfStories: 4,
          ),
          StatusItemWidget(
            heightStatusBorder: heightStatusBorder,
            radiusCircleAvatar: radiusCircleAvatar,
            numberOfStories: 5,
          ),
        ],
      ),
    );
  }
}
