
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:slide_show/models/topicModel.dart';
import 'package:slide_show/screens/endScreen.dart';

class ImageSlideshowProvider extends ChangeNotifier {
  final Topic topic;
  final BuildContext context;
  int _currentIndex = 0;
  bool _showCard = false;
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _timer;
  FlutterTts _flutterTts = FlutterTts();

  ImageSlideshowProvider({
    required this.topic,
    required TickerProvider tickerProvider,
    required this.context,
  }) {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: tickerProvider,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.elasticInOut,
      ),
    );

    _initTts();
    _delayedStartSlideShow();
  }

  String get currentImagePath => topic.imagePaths[_currentIndex];
  String get currentImageName => topic.imageNames[_currentIndex];
  bool get showCard => _showCard;
  Animation<double> get animation => _animation;

  Future<void> _initTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5);
  }

  void _delayedStartSlideShow() {
    Future.delayed(Duration(milliseconds: 500), () {
      _showCard = true;
      notifyListeners();
      _startSlideShow();
    });
  }

  void _startSlideShow() {
    speakCurrentImageName();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentIndex < topic.imagePaths.length - 1) {
        _currentIndex++;
        notifyListeners();
        speakCurrentImageName();
      } else {
        _timer?.cancel();
        _animationController.stop();
        stopSpeaking();
        // Use the mounted property to check if the widget is still in the widget tree
        if ((context as Element).mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => EndScreen()),
          );
        }
      }
    });
  }

  Future<void> speakCurrentImageName() async {
    await _flutterTts.speak(currentImageName);
  }

  Future<void> stopSpeaking() async {
    await _flutterTts.stop();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    stopSpeaking();
    super.dispose();
  }
}
