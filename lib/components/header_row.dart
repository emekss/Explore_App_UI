import 'package:flutter/material.dart';

class HeaderRowItem extends StatelessWidget {
  final String label;
  const HeaderRowItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
