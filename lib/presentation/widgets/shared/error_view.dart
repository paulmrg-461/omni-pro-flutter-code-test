import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ErrorView extends StatelessWidget {
  final String errorMessage;
  const ErrorView({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage),
    );
  }
}
