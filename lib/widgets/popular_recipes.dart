import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipe_app/widgets/widgets.dart';

class PopularRecipes extends StatelessWidget {
  const PopularRecipes(
      {Key? key,
      required this.title,
      required this.category,
      required this.duration,
      required this.urlImg,
      required this.rate})
      : super(key: key);

  final String title;
  final String category;
  final String duration;
  final String urlImg;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'detail');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Recipe(duration: duration, urlImg: urlImg, rate: rate),
            const SizedBox(height: 10),
            Text(title,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text(
              category,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class _Recipe extends StatelessWidget {
  const _Recipe({
    Key? key,
    required this.duration,
    required this.urlImg,
    required this.rate,
  }) : super(key: key);

  final String duration;
  final String urlImg;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundImage(urlImg),
        Positioned(top: 15, left: 12, child: _TimeRecipe(duration)),
        Positioned(left: 95, bottom: 12, child: RateRecipe(rate))
      ],
    );
  }
}

class _TimeRecipe extends StatelessWidget {
  const _TimeRecipe(
    this.duration, {
    Key? key,
  }) : super(key: key);

  final String duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 24,
      width: 75,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Row(children: [
          const SizedBox(width: 5),
          const Icon(
            FontAwesomeIcons.clock,
            color: Colors.white,
            size: 14,
          ),
          const SizedBox(width: 5),
          Text(
            duration,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
          )
        ]),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage(
    this.urlImg, {
    Key? key,
  }) : super(key: key);

  final String urlImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 210,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 6,
          offset: const Offset(4, 8), // Shadow position
        ),
      ], borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image(fit: BoxFit.cover, image: NetworkImage(urlImg)),
      ),
    );
  }
}
