import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/providers/topic_provider.dart';
import 'package:slide_show/screens/topicsScreen%20.dart';

class TopicSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topics = Provider.of<TopicProvider>(context).topics;

    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Topic'),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return Card(
            borderOnForeground: true,
            color: Color.fromARGB(255, 20, 180, 250),
            child: ListTile(
              title: Text(
                topic.title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicScreen(topic: topic),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
