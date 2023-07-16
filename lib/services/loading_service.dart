import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingService {
  void shouLoading(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Your message is being sent',
            style: TextStyle(color: Colors.blue),
          ),
          content: CupertinoActivityIndicator(
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
