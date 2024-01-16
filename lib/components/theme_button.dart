import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
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
          color: Colors.white,
        ),
        child: const Icon(Icons.toggle_on_rounded),
      ),
    );
  }
}
