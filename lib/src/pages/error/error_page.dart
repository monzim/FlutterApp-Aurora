import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My "Page Not Found" Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              error.toString(),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () => context.go('/'),
              child: const Text('Return to Root Page'),
            ),
          ],
        ),
      ),
    );
  }
}
