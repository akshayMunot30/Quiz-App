import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // ignore: deprecated_member_use
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue, onPrimary: Colors.white),
          child: Text('Answer 1'),
          onPressed: selectHandler,
        ));
  }
}
