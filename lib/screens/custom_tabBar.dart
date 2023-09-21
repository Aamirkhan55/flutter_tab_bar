import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with TickerProviderStateMixin{

   late TabController _controller;
   
   @override
  void initState() {
    setState(() {
      _controller = TabController(length: 4, vsync: this, initialIndex: 0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom TabBar'),
        bottom:  TabBar(
            controller: _controller,
            tabs: const [
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
        body: TabBarView(
          controller: _controller,
          children: const [
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
            _controller.animateTo(0);
          },
          child: const Icon(Icons.refresh), 
          ),  
      );
  }
}