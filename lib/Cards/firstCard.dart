import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 20),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: 125,
          width: constraints.maxWidth,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(10.0, 10.0))
          ]),
          child: Card(
            color: Colors.red[400],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 180,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 35,
                    width: constraints.maxWidth - 60,
                    color: Colors.green[400],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
