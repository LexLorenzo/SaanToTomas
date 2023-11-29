import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/categories.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
              color: const Color(0xFFFAFAFA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBarWidget(),
                  const SizedBox(height: 30),
                  const Categories(),
                  const SizedBox(height: 30),
                  const Text(
                    'Popular Places',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Epilogue'),
                  ),
                  const SizedBox(height: 20),
                  //TODO: Update the popular places listed on home page
                  for (int i = 0; i < 5; i++) const PopularPlacesCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
