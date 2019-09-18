import 'package:flutter/material.dart';


class Render extends StatelessWidget {
  final List<dynamic> results;
  final int previewH;
  final int previewW;
  final double screenH;
  final double screenW;

  Render(this.results,
      this.previewH,
      this.previewW,
      this.screenH,
      this.screenW,);

  @override
  Widget build(BuildContext context) {
    List<Widget> _renderBox() {
      return results.map((re) {

        return Center(
          child: ListView(
              children: [Text(
                "${re["index"]} - ${re["label"]}: ${re["confidence"].toString()}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  background: Paint()
                    ..color = Colors.white,
                ),
              ),
              ]),
        );
      }).toList();
    }

    return Stack(
      children: _renderBox(),
    );
  }


}