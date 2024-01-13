import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
