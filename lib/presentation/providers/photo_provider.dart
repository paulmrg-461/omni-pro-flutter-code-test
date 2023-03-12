import 'package:flutter/material.dart';
import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';
import 'package:omnipro_flutter_code_test/domain/repositories/photo_repository.dart';

class PhotoProvider extends ChangeNotifier {
  final PhotoRepository photoRepository;

  int _currentPage = 1;
  bool initialLoading = true;
  List<Photo> photos = [];

  PhotoProvider({required this.photoRepository});

  Future<void> loadNextPage() async {
    final List<Photo> newPhotos =
        await photoRepository.getPhotosByPage(_currentPage);
    photos.addAll(newPhotos);
    initialLoading = false;
    notifyListeners();
  }

  void incrementCurrentPage() {
    _currentPage++;
    loadNextPage();
  }
}
