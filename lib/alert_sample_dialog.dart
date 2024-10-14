import 'package:flutter/material.dart';

class AlertSampleDialog extends StatelessWidget {
  const AlertSampleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("ログアウト"),
      content: const Text("ログアウトしますか"),
      actions: <Widget>[
        GestureDetector(
          child: const Text("No"),
          onTap: () {
            // No
          },
        ),
        GestureDetector(
          child: const Text("YES"),
          onTap: () {
            // Yes (一般的にログアウトはAPIを呼ぶ必要がある)
          },
        )
      ],
    );
  }
}
