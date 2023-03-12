import 'package:flutter/material.dart';

class CustomPhotoCard extends StatelessWidget {
  final String title;
  final String photoUrl;
  final int id;
  final double? width;
  final double? height;

  const CustomPhotoCard(
      {super.key,
      required this.id,
      required this.title,
      required this.photoUrl,
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
              // height: 220,
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/loading.gif',
                  image: photoUrl)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
            child: Text(
              '$id. $title',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
