import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      height: 120,
      child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            _Category(icon: FontAwesomeIcons.fire, index: 1, title: 'Popular'),
            _Category(
                icon: FontAwesomeIcons.pizzaSlice, index: 2, title: 'Western'),
            _Category(
                icon: FontAwesomeIcons.champagneGlasses,
                index: 3,
                title: 'Drinks'),
            _Category(
                icon: FontAwesomeIcons.pepperHot, index: 4, title: 'Local'),
            _Category(
                icon: FontAwesomeIcons.iceCream, index: 5, title: 'Desert'),
            _Category(
                icon: FontAwesomeIcons.bowlRice, index: 6, title: 'Asian'),
            _Category(icon: FontAwesomeIcons.cannabis, index: 7, title: 'Weed'),
          ]),
    );
  }
}

class _Category extends StatelessWidget {
  const _Category({
    Key? key,
    required this.index,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final int index;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              height: 63,
              width: 50,
              decoration: BoxDecoration(
                  color: index == 1
                      ? Colors.amber[400]
                      : Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25), bottom: Radius.circular(25))),
              child: Icon(
                icon,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.black87, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
