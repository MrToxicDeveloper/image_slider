import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  List image = [
    "lib/utils/images/beliver.jpg",
    "lib/utils/images/enemy.jpg",
    "lib/utils/images/oldtown.jpg",
    "lib/utils/images/senorita.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return Image.asset(image[index]);
            },
            options: CarouselOptions(
              autoPlay: true,

            ),
          ),
        ),
      ),
    );
  }
}
