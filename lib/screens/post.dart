import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uiclone1/screens/video_recording_screen.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isWriting = false;
  String text = "";

  late TextEditingController _controller;

  void _onCamera(BuildContext context) {
    context.go(VideoRecordingScreen.routeName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      if (_controller.value.text == "") {
        _isWriting = true;
      }
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
          title: Text("New Thread"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Text("J"),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextField(
                      controller: _controller,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        onPressed: () => _onCamera(context),
                        icon: Icon(Icons.attach_file),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Anione can reply"),
              Text(
                "Post",
                style: TextStyle(
                  color: _isWriting ? Colors.blue : Colors.blue.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
