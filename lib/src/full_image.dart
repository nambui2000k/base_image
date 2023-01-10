import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  const FullScreenImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: InteractiveViewer(
            child: Image(image: CachedNetworkImageProvider(imageUrl)),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 48, right: 24),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
