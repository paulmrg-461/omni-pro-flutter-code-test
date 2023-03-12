import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:omnipro_flutter_code_test/domain/datasources/photo_datasource.dart';
import 'package:omnipro_flutter_code_test/domain/entities/photo.dart';
import 'package:omnipro_flutter_code_test/infraestructure/exceptions/api_exception.dart';
import 'package:omnipro_flutter_code_test/infraestructure/models/jsonplaceholder_photo_model.dart';

class JsonplaceholderPhotoDatasource implements PhotoDatasource {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';
  final int _perPage = 10;

  @override
  Future<List<Photo>> getPhotosByPage(int page) async {
    final response = await http
        .get(Uri.parse('$_baseUrl/photos?_page=$page&_limit=$_perPage'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data
          .map((photo) => JsonplaceholderPhotoModel.fromJson(photo))
          .toList();
    }

    throw ApiException(
        statusCode: response.statusCode,
        message: 'Error to load REST API data: ${response.reasonPhrase}');
  }
}
