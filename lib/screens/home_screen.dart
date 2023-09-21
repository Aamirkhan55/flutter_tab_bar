import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Camera',
                icon: Icon(Icons.camera_alt),
                 ),
              Tab(
                text: 'Chat',
                icon: Icon(Icons.chat_bubble_outlined),
                 ),
              Tab(
                text: 'Updates',
                icon: Icon(Icons.update),
                 ),   
              Tab(
                text: 'Calls',
                icon: Icon(Icons.call_sharp),
                 ),      
            ],
            ),
        ),
      ),
    );
  }
}