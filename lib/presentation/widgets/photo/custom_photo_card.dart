import 'package:flutter/material.dart';

class CustomPhotoCard extends StatelessWidget {
  final String title;
  final String url;
  final int id;
  final double? width;
  final double? height;

  const CustomPhotoCard(
      {super.key,
      required this.id,
      required this.title,
      required this.url,
      this.width = double.infinity,
      this.height = 300});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Column(
        children: [
          SizedBox(
              width: width,
              height: 220,
              child: Image(fit: BoxFit.cover, image: NetworkImage(url))),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              '$id. $title',
              style: const TextStyle(
                  // color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
