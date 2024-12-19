import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FilterBtn extends StatelessWidget {
  final String buttonName;
  final Function modalFunction;
  const FilterBtn(
      {super.key, required this.buttonName, required this.modalFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => modalFunction(),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 233, 233, 233),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Text(buttonName),
            SizedBox(width: 3),
            // Text('(1)'),
            SizedBox(width: 3),
            HugeIcon(
              icon: HugeIcons.strokeRoundedArrowDownDouble,
              color: Colors.black,
              size: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
