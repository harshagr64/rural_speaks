import "package:flutter/material.dart";
import "../models/video_list.dart";
import "package:youtube_player_flutter/youtube_player_flutter.dart";

class VideoPLayerScreen extends StatefulWidget {
  final VideoItem videoItem;
  VideoPLayerScreen({this.videoItem});
  @override
  _VideoPLayerScreenState createState() => _VideoPLayerScreenState();
}

class _VideoPLayerScreenState extends State<VideoPLayerScreen> {
  YoutubePlayerController _youtubePlayerController;
  bool _isPlayerReady;

  @override
  void initState() {
    _isPlayerReady = false;
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.videoItem.video.resourceId.videoId,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
      ),
    )..addListener(_listner);

    super.initState();
  }

  void _listner() {
    if (_isPlayerReady && !_youtubePlayerController.value.isFullScreen) {
      //
    }
  }

  @override
  void deactivate() {
    _youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.videoItem.video.title),
      ),
      body: Container(
        child: YoutubePlayer(
          controller: _youtubePlayerController,
          showVideoProgressIndicator: true,
          onReady: () {
            print("Player is ready");
            _isPlayerReady = true;
          },
        ),
      ),
    );
  }
}
