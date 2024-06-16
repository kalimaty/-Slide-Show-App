// import 'package:flutter/material.dart';
// import 'package:slide_show/providers/image_slideshow_provider.dart';
// import 'package:slide_show/widgets/imageCard%20.dart';
// import 'package:provider/provider.dart';

// class ImageSlideshowView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<ImageSlideshowProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Slideshow'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SizedBox(height: 20),
//             SizedBox(
//               height: 300,
//               child: Stack(
//                 children: [
//                   AnimatedPositioned(
//                     duration: Duration(milliseconds: 500),
//                     curve: Curves.easeInOut,
//                     top: provider.showCard ? 15 : -400,
//                     left: 20,
//                     right: 20,
//                     child: AnimatedSwitcher(
//                       duration: Duration(milliseconds: 500),
//                       transitionBuilder:
//                           (Widget child, Animation<double> animation) {
//                         return FadeTransition(
//                           opacity: animation,
//                           child: ScaleTransition(
//                             scale: animation,
//                             child: child,
//                           ),
//                         );
//                       },
//                       child: ImageCard(
//                         key: ValueKey<String>(provider.currentImagePath),
//                         imagePath: provider.currentImagePath,
//                         animation: provider.animation,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               provider.currentImageName,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_show/widgets/imageCard%20.dart';
import '../providers/image_slideshow_provider.dart';

class ImageSlideshowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ImageSlideshowProvider>(context);

    return WillPopScope(
      onWillPop: () async {
        provider.stopSpeaking(); // Ensure TTS stops when navigating back
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 205, 250),
          title: Text('Image Slideshow'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      top: provider.showCard ? 15 : -400,
                      left: 20,
                      right: 20,
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: ScaleTransition(
                              scale: animation,
                              child: child,
                            ),
                          );
                        },
                        child: ImageCard(
                          key: ValueKey<String>(provider.currentImagePath),
                          imagePath: provider.currentImagePath,
                          animation: provider.animation,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                provider.currentImageName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
