import 'package:flutter/material.dart';
import 'package:slide_show/models/topicModel.dart';

class TopicProvider with ChangeNotifier {
  final List<Topic> _topics = [
    Topic(
      title: 'Animals',
      imagePaths: [
        // 'assets/images/cat.png',
        'assets/images/dog.png',
        'assets/images/bird.png',
      ],
      imageNames: [
        // 'Cat',
        'dog',
        'bird',
      ],
    ),
    Topic(
      title: 'Fruits',
      imagePaths: [
        'assets/images/apples.png',
        'assets/images/banana.png',
        // 'assets/images/orange.png',
      ],
      imageNames: [
        'apples',
        'banana',
        // 'Orange',
      ],
    ),
    // Add more topics here
  ];

  List<Topic> get topics => _topics;
}
