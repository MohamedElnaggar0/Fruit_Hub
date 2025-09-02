import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.firstTitle,
    required this.secondTitle,
  });
  final String backgroundImage;
  final String image;
  final String firstTitle;
  final String secondTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 544,
          child: Stack(
            children: [
              SizedBox(
                height: 544,
                width: double.infinity,
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.cover),
              ),
              Positioned(left: 60, top: 250, child: SvgPicture.asset(image)),
            ],
          ),
        ),
        Text(
          firstTitle,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            secondTitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Cairo', fontSize: 15),
          ),
        ),
      ],
    );
  }
}
