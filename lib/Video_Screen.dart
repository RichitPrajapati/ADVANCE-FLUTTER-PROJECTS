import 'dart:async';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/Global.dart';

class VideoScreenPage extends StatefulWidget {
  const VideoScreenPage({Key? key}) : super(key: key);

  @override
  State<VideoScreenPage> createState() => _VideoScreenPageState();
}

class _VideoScreenPageState extends State<VideoScreenPage> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 100000), (timer) {
      setState(() {});
    });

    if (Global.image == 1) {
      videoPlayerController = VideoPlayerController.asset(
        "asset/Video/Nature.mp4",
      );
    } else if (Global.image == 2) {
      videoPlayerController = VideoPlayerController.asset(
          "asset/Video/Gym1.mp4",
      );
    } else if (Global.image == 3) {
      videoPlayerController = VideoPlayerController.asset(
        "asset/Video/Nature1.mp4",
      );
    } else if (Global.image == 4) {
      videoPlayerController = VideoPlayerController.asset(
        "asset/Video/Nature1.mp4",
      );
    }
    else if (Global.image == 5) {
      videoPlayerController = VideoPlayerController.asset(
        "asset/Video/Nature1.mp4",
      );
    }

    videoPlayerController.initialize().then((val) {
      setState(() {});
    });

    chewieController =
        ChewieController(videoPlayerController: videoPlayerController);
    (chewieController.isPlaying)
        ? Timer.periodic(const Duration(milliseconds: 100000), (timer) {
      setState(() {});
    })
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          CateName!,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 7,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              margin: const EdgeInsets.only(top: 15, right: 15, left: 15),
              height: 430,
              width: double.infinity,
              color: Colors.black,
              child: AspectRatio(
                aspectRatio: videoPlayerController.value.aspectRatio,
                child: Chewie(
                  controller: chewieController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
