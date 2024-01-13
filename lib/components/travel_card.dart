import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/add_button.dart';

class TravelCard extends StatelessWidget {
  const TravelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Row(
        children: [
          const Column(
            children: [Text('AGRA'), Text('Taj Mahal'), AddButton()],
          ),
          Image.asset('assets/images/taj.jpg')
        ],
      ),
    );
  }
}
