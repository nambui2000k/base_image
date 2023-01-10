import 'package:base_image/src/full_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../base_image.dart';

class NetworkImageWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final BorderRadius? borderRadius;
  final bool? isClickFullScreen;

  const NetworkImageWidget(
      {Key? key,
      required this.url,
      this.width,
      this.height,
      this.boxFit,
      this.borderRadius,
      this.isClickFullScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isClickFullScreen == null
          ? () {
              if (url.isEmpty || url.toString() == "null") {
                return;
              }
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 1,
                      child: FullScreenImage(
                          imageUrl: url.toString() == "null"
                              ? "https://images.assetsdelivery.com/compings_v2/yehorlisnyi/yehorlisnyi2104/yehorlisnyi210400016.jpg"
                              : url),
                    );
                  });
            }
          : null,
      child: CachedNetworkImage(
        imageUrl: url.toString(),
        imageBuilder: (context, imageProvider) => Container(
          height: height ?? 50, //50
          width: width ?? 50, //50
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(0),
            image: DecorationImage(
                image: imageProvider, fit: boxFit ?? BoxFit.cover),
          ),
        ),
        errorWidget: (_, __, ___) {
          return LocalImageWidget(
              url: "packages/base_image/assets/png/png_no_image.png",
              boxFit: BoxFit.cover,
              width: width ?? 50,
              height: height ?? 50,
              borderRadius: borderRadius ?? BorderRadius.circular(0));
        },
        placeholder: (context, url) => Center(
          child: SizedBox(
            width: width ?? 50,
            height: height ?? 50,
            child: Lottie.asset("packages/base_image/assets/json/loading.json"),
          ),
        ),
      ),
    );
  }
}
