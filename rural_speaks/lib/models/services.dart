import 'dart:io';
import "channel_info.dart";
import "package:http/http.dart" as http;
import "../utilities/api_key.dart";
import "video_list.dart";

class Services {
  static const String channelId = 'UC5lbdURzjB0irr-FTbjWN1A';
  static const _baseUrl = 'youtube.googleapis.com';

  static Future<ChannelInfo> getChannelInfo() async {
    Map<String, String> parameters = {
      'part': 'snippet,contentDetails,statistics',
      'id': channelId,
      'key': Constants.API,
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json'
    };

    Uri uri = Uri.https(_baseUrl, '/youtube/v3/channels', parameters);
    http.Response response = await http.get(uri, headers: headers);
    // print(response.body);
    ChannelInfo channelInfo = channelInfoFromJson(response.body);
    return channelInfo;
  }

  static Future<VideoList> getVideosList(
      {String playListId, String pageToken}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playListId,
      'maxResults': '8',
      'pageToken': pageToken,
      'key': Constants.API,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );
    http.Response response = await http.get(uri, headers: headers);
    // print(response.body);
    VideoList videosList = videosListFromJson(response.body);
    return videosList;
  }
}

// curl \
//   'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=UC5lbdURzjB0irr-FTbjWN1A&access_token=AIzaSyAfOdTGpAPESodF-I0E6K1POiFAJJothL0&key=[YOUR_API_KEY]' \
//   --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
//   --header 'Accept: application/json' \
//   --compressed
