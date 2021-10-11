import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import 'controls.dart';

class LandscapePlayer extends StatefulWidget {
  const LandscapePlayer({Key? key}) : super(key: key);

  @override
  _LandscapePlayerState createState() => _LandscapePlayerState();
}

class _LandscapePlayerState extends State<LandscapePlayer> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));
  }

  @override
  void dispose() {
    //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]);
    flickManager.dispose();
    Navigator.pop(context);
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlickVideoPlayer(
        flickManager: flickManager,
        
        preferredDeviceOrientation: const [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ],
        systemUIOverlay: const [],
        flickVideoWithControls: const FlickVideoWithControls(
          controls: LandscapePlayerControls(),
        ),
      ),
    );
  }
}