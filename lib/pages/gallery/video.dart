import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  String link;
  String title;
  VideoPlayerScreen({required this.link,required this.title});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(widget.link).toString(),
          flags: YoutubePlayerFlags(
            hideControls: false,
              controlsVisibleAtStart: true,
              autoPlay: false,
              mute: false,
              forceHD: false,
            ),
            );
  }
  
    @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           Container(
              margin: EdgeInsets.only(top: 20),
            height: 220,
        child: YoutubePlayer(
        controller: _controller,
            showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blue,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            ),
           ),
           Container(
              height: 70,
              color: Colors.grey.withOpacity(0.3),
              child: Center(
                child: Text(widget.title,
                maxLines: 1
                ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue.shade900,
                ),),
              ),
              ),
        ],
      );
  }
}