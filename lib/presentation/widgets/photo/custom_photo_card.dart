import 'package:flutter/material.dart';

class CustomPhotoCard extends StatelessWidget {
  final String title;
  final String photoUrl;
  final int id;
  final double? width;

  const CustomPhotoCard({
    super.key,
    required this.id,
    required this.title,
    required this.photoUrl,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: width,
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/loading.gif',
                  image: photoUrl)),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              '$id. $title',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
