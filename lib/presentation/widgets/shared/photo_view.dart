import 'package:flutter/material.dart';
import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';
import 'package:omnipro_flutter_code_test/presentation/widgets/photo/custom_photo_card.dart';

class PhotoView extends StatelessWidget {
  final List<Photo> photos;
  const PhotoView({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, index) {
        final Photo photo = photos[index];

        return CustomPhotoCard(
            id: photo.id, title: photo.title, photoUrl: photo.thumbnailUrl);
      },
    );
  }
}
