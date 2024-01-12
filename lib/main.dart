import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // 1 app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Facebook".toLowerCase(),
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          // 4
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: const Icon(
              Icons.message_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),

      // body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // c1
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: const Row(
              children: [
                // round image
                CircleAvatar(
                  backgroundColor: Colors.blue,
                ),

                SizedBox(width: 16),
                Text("What\"s is on your mind?"),
              ],
            ),
          ),

          // c2
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(top: 4),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.video_call),
                    SizedBox(width: 8),
                    Text("Live"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.video_call),
                    SizedBox(width: 8),
                    Text("Live"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.video_call),
                    SizedBox(width: 8),
                    Text("Live"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
