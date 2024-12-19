import 'package:flutter/material.dart';

class FilterOptionsBottomSheet extends StatelessWidget {
  final String showWhichOptions;
  const FilterOptionsBottomSheet({super.key, required this.showWhichOptions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(showWhichOptions),
      ),
    );
  }
}
