import 'package:flutter/material.dart';
import 'package:slide_show/widgets/customElevatedButton.dart';

class EndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 10, 205, 250),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 200, 250),
        title: Text('End of Slideshow'),
        elevation: 6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          // child: ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text('Back to Topics'),
          // ),
          child: CustomElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            title: 'Back to Topics',
            width: double.infinity,
            height: 50,
            colors: [Colors.blueAccent, Colors.blue],
          ),
        ),
      ),
    );
  }
}
