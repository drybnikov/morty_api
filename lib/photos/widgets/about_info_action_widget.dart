import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutInfoActionWidget extends StatelessWidget {
  const AboutInfoActionWidget({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () => showAboutDialog(
          context: context,
          applicationIcon: const FlutterLogo(),
          applicationVersion: '0.0.1 2023',
          applicationLegalese: '\u{a9} 2023 By Denis Rybnikov',
        ),
        icon: const Icon(CupertinoIcons.info),
      );
}
