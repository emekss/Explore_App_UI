import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/add_button.dart';

class TravelCard extends StatelessWidget {
  final String country;
  final String title;
  const TravelCard({super.key, required this.country, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primary,
        ),
        height: 200,
        width: 250,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const AddButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
