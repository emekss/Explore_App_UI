import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  bool get isDarkMode => false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 40,
      child:
          // Toggle Button
          IconButton(
        color: Theme.of(context).colorScheme.tertiary,
        icon: const Icon(Icons.brightness_2),
        onPressed: () {
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          const Icon(Icons.wb_sunny_rounded);
        },
      ),
    );
  }
}
