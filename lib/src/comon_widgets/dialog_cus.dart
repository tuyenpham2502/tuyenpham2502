import 'package:flutter/material.dart';

void dialogCus(context) {
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: const Text("Title"),
      content: const Text("Content"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Ok"),
        ),
      ],
    );
  });
}