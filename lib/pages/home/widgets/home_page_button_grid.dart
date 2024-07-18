import 'package:flutter/material.dart';

class HomePageButtonGrid extends StatelessWidget {
  const HomePageButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<BeveledRectangleBorder>(
                  BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('hi'),
            ),
          ),
        );
      }),
    );
  }
}
