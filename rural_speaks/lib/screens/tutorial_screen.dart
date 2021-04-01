import "package:flutter/material.dart";
// import 'package:youtube_api/screens/video_player_screen.dart';
import "../models/channel_info.dart";
import "video_screen.dart";
import "../models/services.dart";
import "package:cached_network_image/cached_network_image.dart";
import "../models/video_list.dart";

class TutorialScreen extends StatefulWidget {
  static const routeName = '/tutorial';
  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  ChannelInfo _channelInfo;
  Item _item;
  bool isLoading;
  String playlistId;
  VideoList _videoList;
  String _nextPageToken;
  ScrollController _scrollController;

  @override
  void initState() {
    isLoading = true;
    _nextPageToken = '';
    _scrollController = ScrollController();
    // print(_channelInfo);
    _getChannelInfo();
    _videoList = VideoList();
    _videoList.videos = [];
    super.initState();
  }

  _getChannelInfo() async {
    _channelInfo = await Services.getChannelInfo();
    _item = _channelInfo.items[0];
    playlistId = _item.contentDetails.relatedPlaylists.uploads;
    // print(playlistId);
    await _loadVideos();
    setState(() {
      isLoading = false;
    });
  }

  _loadVideos() async {
    VideoList _tempVideo = await Services.getVideosList(
      playListId: playlistId,
      pageToken: _nextPageToken,
    );
    _nextPageToken = _tempVideo.nextPageToken;
    _videoList.videos.addAll(_tempVideo.videos);
    print(_videoList.videos);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Tutorials'),
        backgroundColor: Color(0xFFFF7F50),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(
                  Color(0xFFFF7F50),
                ),
                // backgroundColor: Color(0xFFFF7F50),
              ),
            )
          : Container(
              color: Colors.white,
              child: Column(
                children: [
                  // _buildInfoView(),
                  Expanded(
                    child: NotificationListener<ScrollEndNotification>(
                      onNotification: (notification) {
                        if (_videoList.videos.length >=
                            int.parse(_item.statistics.videoCount)) {
                          return true;
                        }
                        if (notification.metrics.pixels ==
                            notification.metrics.maxScrollExtent) {
                          _loadVideos();
                        }
                        return true;
                      },
                      child: ListView.builder(
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          VideoItem videoItem = _videoList.videos[index];
                          return InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return VideoPLayerScreen(
                                    videoItem: videoItem,
                                  );
                                }),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Card(
                                // color: Color(0xFFFF7F50).withOpacity(0.3),
                                elevation: 1,
                                shadowColor: Colors.black.withOpacity(0.8),
                                margin: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: videoItem.video.thumbnails
                                          .thumbnailsDefault.url,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(
                                      child: Text(
                                        videoItem.video.title,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: _videoList.videos.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  _buildInfoView() {
    return isLoading
        ? CircularProgressIndicator()
        : Container(
            padding: EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                          _item.snippet.thumbnails.medium.url),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Text(
                        _item.snippet.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(_item.statistics.videoCount)
                  ],
                ),
              ),
            ),
          );
  }
}
