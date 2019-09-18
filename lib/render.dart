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



    return MaterialApp(

      home: Align(alignment: Alignment.bottomLeft,
        child: RotatedBox(quarterTurns: 0 ,
                            child: ListView(
          padding : ///const EdgeInsets.fromLTRB(40.0, 450.0, 20.0, 0.0)
            const EdgeInsets.fromLTRB(520.0, 80.0, .0, 0.0),

          children: results != null
              ? results.map((res) {

            return Text(
              "${res["label"]}: ${(res["confidence"] * 100).toStringAsFixed(0)}%",
              style: TextStyle(
                color: Color.fromRGBO(37, 213, 253, 1.0),
                fontSize: 18.0,

              ),

            );
          }).toList()
              : [],

        )),
      ),

    );

  }



}