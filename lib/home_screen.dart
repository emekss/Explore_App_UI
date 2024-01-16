import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list.dart';
import 'package:flutter_application_1/components/header_row.dart';
import 'package:flutter_application_1/components/travel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 69, 79),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 83, 104, 120),
        leading: const Icon(Icons.search_rounded),
        actions: const [Icon(Icons.menu_rounded)],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 83, 104, 120),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Discover',
                  style: TextStyle(fontSize: 45, color: Colors.white),
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
          Image.asset("assets/images/rentlogo.jpeg")
        ],
      ),
    );
  }
}
