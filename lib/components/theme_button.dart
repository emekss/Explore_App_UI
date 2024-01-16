import 'package:flutter/material.dart';

class ThemeButton1 extends StatelessWidget {
  const ThemeButton1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        child: const Icon(Icons.toggle_on_rounded),
      ),
    );
  }
}
