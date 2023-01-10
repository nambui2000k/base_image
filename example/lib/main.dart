import 'dart:developer';
import 'package:base_image/base_image.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      CallNativeFlutter.getBattery().then((value) {
        log("Your battery :$value");
      });
    });
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Base image widget'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              NetworkImageWidget(
                url:
                    "https://img.meta.com.vn/Data/image/2022/01/13/anh-dep-thien-nhien-3.jpg",
                height: 200,
                width: double.infinity,
                boxFit: BoxFit.cover,
              ),
              SizedBox(
                height: 50,
              ),
              SVGImageWidget(url: "assets/svg_address.svg"),
              SizedBox(
                height: 50,
              ),
              LocalImageWidget(
                url: "assets/png_no_image.png",
                height: 200,
                width: double.infinity,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
