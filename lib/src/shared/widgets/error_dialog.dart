import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  String? title;
  String? content;

  ErrorDialog({this.title, this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? 'Error'),
      content: Text(content ?? ''),
      actions: [TextButton(onPressed: ()=>Navigator.of(context).pop(), child: Text('Close'))],
    );
  }
}
