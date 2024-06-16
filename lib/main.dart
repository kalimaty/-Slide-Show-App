import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/providers/topic_provider.dart';
import 'package:slide_show/screens/topic_selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TopicProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slide Show',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopicSelectionScreen(),
      ),
    );
  }
}
