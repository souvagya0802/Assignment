import 'package:assignment/Cards/secondCard.dart';
import 'package:flutter/material.dart';

import 'Cards/firstCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              FirstCard(),
              SizedBox(height: 50),
              SecondCard(),
            ],
          ),
        ),

      ),
    );
  }
}
