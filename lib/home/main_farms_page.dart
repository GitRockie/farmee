import 'package:flutter/material.dart';

class MainFarmsPage extends StatelessWidget {
  const MainFarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text('Country'),
                Text('City'),
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
