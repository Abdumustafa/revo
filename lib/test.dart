import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoPickerWidget extends StatefulWidget {
  final void Function(File video) onVideoPicked;

  const VideoPickerWidget({super.key, required this.onVideoPicked});

  @override
  State<VideoPickerWidget> createState() => _VideoPickerWidgetState();
}

class _VideoPickerWidgetState extends State<VideoPickerWidget> {
  File? _videoFile;
  String? _thumbnailPath;

  Future<void> _pickVideo() async {
    final picker = ImagePicker();
    final pickedVideo = await picker.pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(minutes: 2),
    );

    if (pickedVideo != null) {
      final file = File(pickedVideo.path);

      // Generate thumbnail
      final thumb = await VideoThumbnail.thumbnailFile(
        video: pickedVideo.path,
        imageFormat: ImageFormat.JPEG,
        maxHeight: 300,
        quality: 75,
      );

      setState(() {
        _videoFile = file;
        _thumbnailPath = thumb;
      });

      widget.onVideoPicked(file);
    }
  }

  void _removeVideo() {
    setState(() {
      _videoFile = null;
      _thumbnailPath = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "إضافة فيديو للعقار",
          style: TextStyle(
            fontFamily: "Cairo",
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 10.h),

        GestureDetector(
          onTap: _pickVideo,
          child: Container(
            width: double.infinity,
            height: 180.h,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: _videoFile == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.video_library_outlined,
                          size: 40.sp, color: Colors.grey),
                      SizedBox(height: 6.h),
                      Text(
                        "اضغط لاختيار فيديو",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.grey[700],
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  )
                : Stack(
                    children: [
                      // Thumbnail
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.file(
                          File(_thumbnailPath!),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Black overlay
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),

                      // Play icon
                      Center(
                        child: Icon(
                          Icons.play_circle_fill,
                          size: 60.sp,
                          color: Colors.white,
                        ),
                      ),

                      // Remove button
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          onTap: _removeVideo,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(4.r),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}



class VideoPreviewScreen extends StatefulWidget {
  final File videoFile;

  const VideoPreviewScreen({super.key, required this.videoFile});

  @override
  State<VideoPreviewScreen> createState() => _VideoPreviewScreenState();
}

class _VideoPreviewScreenState extends State<VideoPreviewScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(widget.videoFile)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("معاينة الفيديو", style: TextStyle(fontFamily: "Cairo")),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}