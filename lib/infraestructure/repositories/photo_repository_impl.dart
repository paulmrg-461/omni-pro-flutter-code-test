import 'package:omnipro_flutter_code_test/domain/datasources/photo_datasource.dart';
import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';
import 'package:omnipro_flutter_code_test/domain/repositories/photo_repository.dart';

class PhotoRepositoryImpl extends PhotoRepository {
  final PhotoDatasource photoDatasource;

  PhotoRepositoryImpl({required this.photoDatasource});

  @override
  Future<List<Photo>> getPhotosByPage(int page) =>
      photoDatasource.getPhotosByPage(page);
}
