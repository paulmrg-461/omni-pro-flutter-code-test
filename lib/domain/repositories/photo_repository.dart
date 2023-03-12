import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';

abstract class PhotoRepository {
  Future<List<Photo>> getPhotosByPage(int page);
}
