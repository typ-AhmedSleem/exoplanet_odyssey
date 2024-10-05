
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  @override
  _YoutubeVideoPlayerState createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _controller;


  final List<String> videoUrls = [
    'https://youtu.be/0ZOhJe_7GrE?si=NljM3XpVMksyRuhU',
    'https://youtu.be/MinKAS3-XMc?si=v3NzI8IICortJZch'
    'https://youtu.be/e8YzKyot4Pc?feature=shared',
    'https://youtu.be/MinKAS3-XMc?si=v3NzI8IICortJZch',


  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrls[0])!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playVideo(String url) {

    _controller.load(YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: const Text('Explanet Video'),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: videoUrls.length,
                itemBuilder: (context, index) {

    return SizedBox(
      child: Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      ),
      child:SizedBox(
                  width: 200.0,
                  height: 300.0, child: InkWell(

      onTap: () => _playVideo(videoUrls[index]),
      ) )),
    );

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
