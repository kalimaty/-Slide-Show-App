import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/models/topicModel.dart';
import 'package:slide_show/providers/topic_provider.dart';
import 'package:slide_show/screens/history_widget.dart';
import 'package:slide_show/screens/imageSlideshow%20.dart';
import 'package:slide_show/widgets/customElevatedButton.dart';

import '../providers/slide_provider.dart';

class TopicScreen extends StatelessWidget {
  final Topic topic;

  TopicScreen({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 205, 250),
        title: Text(topic.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => ImageSlideshowScreen(topic: topic),
            //       ),
            //     );
            //   },
            //   child: Text('Start Slideshow'),
            // ),

            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageSlideshowScreen(topic: topic),
                  ),
                );
              },
              title: 'Start Slideshow',
              width: double.infinity,
              height: 50,
              colors: [Colors.blueAccent, Colors.blue],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => HistoryWidget(topic: topic),
            //       ),
            //     );
            //   },
            //   child: Text('View History'),
            // ),

            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryWidget(topic: topic),
                  ),
                );
              },
              title: 'View History',
              width: double.infinity,
              height: 50,
              colors: [Colors.blueAccent, Colors.blue],
            ),
          ],
        ),
      ),
    );
  }
}

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topicProvider = Provider.of<TopicProvider>(context);
    final book = Provider.of<SlideProvider>(context).book;

    return Scaffold(
      appBar: AppBar(
        title: Text('Book Topics'),
      ),
      body: ListView.builder(
        // itemCount: book.topics.length,
        itemCount: topicProvider.topics.length,
        itemBuilder: (context, index) {
          final topic = book.topics[index];
          return ListTile(
            title: Text(topic.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicScreen(topic: topic),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
