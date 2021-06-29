import 'package:flutter/material.dart';

import 'labeled_container.dart';

class FlexExpand extends StatelessWidget {
  const FlexExpand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._header(context, 'Expanded'),
            //The Expanded widget will take up all the remaining unconstrained space from a Row or
            //a Column.
            _buildExpanded(),
            ..._header(context, 'Flexible'),
            // similar to Expanded, but it can also use the flex parameter to calculate the weight of each
            // widget
            _buildFlexible(),
            Expanded(
              child: Container(),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildExpanded() {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          LabeledContainer(
            width: 100,
            height: double.infinity,
            color: Colors.green,
            text: '100',
          ),
          Expanded(
            child: LabeledContainer(
              color: Colors.purple,
              text: 'The Remainder',
              textColor: Colors.white,
            ),
          ),
          LabeledContainer(
            width: 40,
            height: double.infinity,
            color: Colors.green,
            text: '40',
          )
        ],
      ),
    );
  }

  Widget _buildFlexible() {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.orange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 1,
            child: LabeledContainer(
              color: Colors.deepOrange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 2,
            child: LabeledContainer(
              color: Colors.blue,
              text: '50%',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30,
          ),
          child: Text(
            'Pinned to the Bottom',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    ];
  }
}
