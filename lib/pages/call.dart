import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/widgets/item_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
        ],
      ),
    );
  }
}
