// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:slide_show/models/topicModel.dart';
// import 'package:slide_show/screens/image_slideshow_view.dart';
// import '../providers/image_slideshow_provider.dart';

// class ImageSlideshowScreen extends StatefulWidget {
//   final Topic topic;

//   ImageSlideshowScreen({required this.topic});

//   @override
//   _ImageSlideshowScreenState createState() => _ImageSlideshowScreenState();
// }

// class _ImageSlideshowScreenState extends State<ImageSlideshowScreen>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ImageSlideshowProvider(
//         topic: widget.topic,
//         tickerProvider: this,
//         context: context, // Pass context here
//       ),
//       child: ImageSlideshowView(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/models/topicModel.dart';
import 'package:slide_show/screens/image_slideshow_view.dart';
import '../providers/image_slideshow_provider.dart';

class ImageSlideshowScreen extends StatefulWidget {
  final Topic topic;

  ImageSlideshowScreen({required this.topic});

  @override
  _ImageSlideshowScreenState createState() => _ImageSlideshowScreenState();
}

class _ImageSlideshowScreenState extends State<ImageSlideshowScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ImageSlideshowProvider(
        topic: widget.topic,
        tickerProvider: this,
        context: context,
      ),
      child: ImageSlideshowView(),
    );
  }
}
