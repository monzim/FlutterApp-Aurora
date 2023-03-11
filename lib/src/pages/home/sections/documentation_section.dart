import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '/services/localization/extention/locale_extention.dart';

class DocumentationSection extends StatelessWidget {
  const DocumentationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final contactUri = Uri.parse('https://monzim.com/contact');
    final brickUri = Uri.parse('https://github.com/monzim/mason_bricks');
    final sourceUri = Uri.parse('https://github.com/monzim/FlutterApp-Aurora');

    Future<void> launchMe(Uri uri) async {
      try {
        await launchUrl(uri);
      } on Exception catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
          ),
        );
      }
    }

    return Column(
      children: <Widget>[
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: context.l10n.heyThere,
              style: TextStyle(
                color: Theme.of(context).buttonTheme.colorScheme?.primary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: '\n${context.l10n.iAmAzrafAlMonzim}',
                )
              ]),
        ),
        const SizedBox(height: 10),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '${context.l10n.templateShortDescription} ',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                  fontSize: 15.5,
                ),
                children: [
                  TextSpan(
                    text: 'packages',
                    style: TextStyle(
                      color: Theme.of(context).buttonTheme.colorScheme?.primary,
                      fontWeight: FontWeight.w400,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Packages'),
                                content: const Text(
                                    '\n- intl\n- google_fonts\n- riverpod_annotation\n- flutter_localizations\n- build_runner\n- flutter_localizations\n- riverpod_lint\n- riverpod_generator\n- go_router_builder\n- build_verify'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            });
                      },
                  ),
                  TextSpan(text: context.l10n.midDescription),
                  TextSpan(
                    text: '\nDocumentation',
                    style: TextStyle(
                        color:
                            Theme.of(context).buttonTheme.colorScheme?.primary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launchMe(sourceUri),
                  ),
                  TextSpan(
                    text: '\nSource Code',
                    style: TextStyle(
                        color:
                            Theme.of(context).buttonTheme.colorScheme?.primary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launchMe(brickUri),
                  ),
                  TextSpan(
                    text: '\n\n${context.l10n.contactMe}',
                    style: TextStyle(
                        color:
                            Theme.of(context).buttonTheme.colorScheme?.primary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launchMe(contactUri),
                  ),
                  TextSpan(
                      text: '.\n\n${context.l10n.startOnGithub} ',
                      children: [
                        TextSpan(
                          text: 'GitHub',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .buttonTheme
                                  .colorScheme
                                  ?.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => launchMe(sourceUri),
                        ),
                        const TextSpan(
                          text: '.',
                        ),
                        TextSpan(
                          text: '\n\n${context.l10n.thankYou}',
                          style: TextStyle(
                            color: Theme.of(context)
                                .buttonTheme
                                .colorScheme
                                ?.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ]))
      ],
    );
  }
}
