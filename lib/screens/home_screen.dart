import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/screens/custom_tabBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
        body: const TabBarView(
          children: [
              Center(
                child: Text(
                  'This is TabBar 1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              Center(
                child: Text(
                  'This is TabBar 2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              Center(
                child: Text(
                  'This is TabBar 3',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              Center(
                child: Text(
                  'This is TabBar 4',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),      
          ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const CustomTabBar()));
          },
          child: const Icon(Icons.navigate_next_sharp),
           ),  
      ),
    );
  }
}