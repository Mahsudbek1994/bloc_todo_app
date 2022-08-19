import 'package:flutter/material.dart';
import 'package:todo_app/presentation/add_task/status/status_picker.dart';

import 'date_picker/date_picker.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 40),
      child: AlertDialog(
        title: Column(
          children: [
            Row(
              children: [
                const Text(
                  "with name fields:",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: 100,
                  child: const TextField(
                    decoration:
                        InputDecoration(disabledBorder: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "term (day):",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(width: 70, child: DatePick()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "status:",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(width: 70, child: StatusPicker()),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'cancel',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'save',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
