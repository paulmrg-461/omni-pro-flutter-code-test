import 'package:flutter/material.dart';
import 'package:omnipro_flutter_code_test/presentation/widgets/shared/error_view.dart';
import 'package:omnipro_flutter_code_test/presentation/widgets/shared/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:omnipro_flutter_code_test/presentation/providers/photo_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PhotoProvider photoProvider = context.watch<PhotoProvider>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('omni.pro'),
        ),
        body: photoProvider.initialLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollEndNotification &&
                      scrollNotification.metrics.extentAfter == 0) {
                    photoProvider.incrementCurrentPage();
                  }
                  return true;
                },
                child: (photoProvider.errorMessage == '')
                    ? PhotoView(photos: photoProvider.photos)
                    : ErrorView(errorMessage: photoProvider.errorMessage)));
  }
}
