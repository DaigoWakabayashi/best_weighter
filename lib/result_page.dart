import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'calculate.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bestWeightResult,
  });

  final String bestWeightResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('適正体重'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    bestWeightResult,
                    style: BestWeightTextStyle,
                  ),
                  Text(
                    'kg',
                    style: labelTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: '入力画面に戻る',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
