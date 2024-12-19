import 'package:flutter/material.dart';
import 'package:jobbie_mobile/views/home/components/filter_bottom_sheet.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:jobbie_mobile/views/home/components/filter_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    showModalRoles() {
      showCupertinoModalBottomSheet(
        duration: Duration(milliseconds: 300),
        context: context,
        builder: (context) => FilterOptionsBottomSheet(
          showWhichOptions: 'roles',
        ),
      );
    }

    showModalContractType() {
      showCupertinoModalBottomSheet(
        duration: Duration(milliseconds: 300),
        context: context,
        builder: (context) => FilterOptionsBottomSheet(
          showWhichOptions: 'contracts',
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jobbie',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red[400]),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              FilterBtn(
                buttonName: "Role",
                modalFunction: showModalRoles,
              ),
              FilterBtn(
                buttonName: 'Duration',
                modalFunction: showModalContractType,
              ),
            ],
          )
        ],
      ),
    );
  }
}
