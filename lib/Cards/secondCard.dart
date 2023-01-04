import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 10),
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth - 20,
                  height: 33,
                  color: Colors.white,
                ),
                Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(10.0, 10.0))
                  ]),
                  width: constraints.maxWidth - 20,
                  height: 125,
                  child: Card(
                    color: Colors.red[400],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(height: 30),
                          const SizedBox(height: 20),
                          Container(
                            height: 35,
                            width: constraints.maxWidth,
                            color: Colors.green[400],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const SizedBox(
                height: 60,
                width: 180,
                child: Card(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
