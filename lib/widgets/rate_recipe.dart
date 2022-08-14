import 'package:flutter/material.dart';

class RateRecipe extends StatelessWidget {
  const RateRecipe(
    this.rate, {
    this.width = 45,
    this.height = 15,
    this.size = 12,
    Key? key,
  }) : super(key: key);

  final String rate;
  final double width;
  final double height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.star,
            size: size,
          ),
          const SizedBox(width: 5),
          Text(
            rate,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: size),
          )
        ]),
      ),
    );
  }
}
