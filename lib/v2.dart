import 'package:flutter/material.dart';

class V2 extends StatefulWidget {
  @override
  _V2State createState() =>
      _V2State();
}

class _V2State
    extends State<V2> {
  double _topLeftRadius = 0.0;
  double _topRightRadius = 0.0;
  double _bottomLeftRadius = 0.0;
  double _bottomRightRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Configurator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_topLeftRadius),
                  topRight: Radius.circular(_topRightRadius),
                  bottomLeft: Radius.circular(_bottomLeftRadius),
                  bottomRight: Radius.circular(_bottomRightRadius),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Top Left Radius: ${_topLeftRadius.toStringAsFixed(1)}"),
            Slider(
              value: _topLeftRadius,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _topLeftRadius = value;
                });
              },
            ),
            Text("Top Right Radius: ${_topRightRadius.toStringAsFixed(1)}"),
            Slider(
              value: _topRightRadius,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _topRightRadius = value;
                });
              },
            ),
            Text("Bottom Left Radius: ${_bottomLeftRadius.toStringAsFixed(1)}"),
            Slider(
              value: _bottomLeftRadius,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _bottomLeftRadius = value;
                });
              },
            ),
            Text("Bottom Right Radius: ${_bottomRightRadius.toStringAsFixed(1)}"),
            Slider(
              value: _bottomRightRadius,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _bottomRightRadius = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}