import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list.dart';
import 'package:flutter_application_1/components/header_row.dart';
import 'package:flutter_application_1/components/theme_button.dart';
import 'package:flutter_application_1/components/travel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Icon(
          Icons.search_rounded,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ThemeButton(),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 45,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: header.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HeaderRowItem(label: header[index]),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final item = travelCardItem[index];
                  return TravelCard(
                    country: item['country'] as String,
                    title: item['title'] as String,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
