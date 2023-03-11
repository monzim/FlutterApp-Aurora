import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget(this.error, {super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      error,
      textAlign: TextAlign.center,
    );
  }
}
