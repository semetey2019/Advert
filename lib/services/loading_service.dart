import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingService {
  void shouLoading(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Сиздин маалыматыныз жонотулуудо'),
          content: CupertinoActivityIndicator(),
        );
      },
    );
  }
}
