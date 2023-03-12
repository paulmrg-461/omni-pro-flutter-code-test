import 'package:flutter/material.dart';
import 'package:omnipro_flutter_code_test/config/routes/app_routes.dart';
import 'package:omnipro_flutter_code_test/config/theme/app_theme.dart';
import 'package:omnipro_flutter_code_test/infraestructure/datasources/jsonplaceholder_photo_datasource_impl.dart';
import 'package:omnipro_flutter_code_test/infraestructure/repositories/photo_repository_impl.dart';
import 'package:omnipro_flutter_code_test/presentation/providers/photo_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PhotoRepositoryImpl photoRepository =
        PhotoRepositoryImpl(photoDatasource: JsonplaceholderPhotoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => PhotoProvider(photoRepository: photoRepository)
              ..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'Omni Pro Code Test',
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          theme: AppTheme().getTheme()),
    );
  }
}
