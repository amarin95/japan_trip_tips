import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(4, (index) {
        return AspectRatio(
          aspectRatio: 1,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text('hi'),
          ),
        );
      }),
    );
  }
}
