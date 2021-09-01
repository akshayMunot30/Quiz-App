import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHanlder;

  Result(this.resultScore, this.resetHanlder);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent!!';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are...strange?!';
    } else {
      resultText = 'You are so bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60,),
            TextButton(
              child: Text('Restart Quiz!'),
              style: TextButton.styleFrom(primary: Colors.blue),
              onPressed: resetHanlder,
            )
          ],
        ),
      ),
    );
  }
}
