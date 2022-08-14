import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipe_app/widgets/widgets.dart';

class DetailRecipe extends StatelessWidget {
  const DetailRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(
              child: Icon(
                Icons.horizontal_rule,
                size: 60,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  'Chicken Curry',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                RateRecipe(
                  '4.5',
                  width: 80,
                  height: 35,
                  size: 17,
                )
              ],
            ),
            const Text(
              'Asian',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _Info(
                  icon: FontAwesomeIcons.clock,
                  title: '35',
                  subtitle: 'mins',
                ),
                _Info(
                  icon: FontAwesomeIcons.userGroup,
                  title: '03',
                  subtitle: 'Servings',
                ),
                _Info(
                  icon: FontAwesomeIcons.fire,
                  title: '103',
                  subtitle: 'Cal',
                ),
                _Info(
                  icon: FontAwesomeIcons.layerGroup,
                  title: 'Easy',
                  subtitle: '',
                ),
              ],
            ),
            const SizedBox(height: 20),
            const _Ingredients(),
            const SizedBox(height: 20),
            _Directions()
          ]),
        ),
      ),
    );
  }
}

class _Directions extends StatelessWidget {
  const _Directions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Direction',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 10),
          _Ingredient(
              mesure: '',
              text:
                  'Id exercitation fugiat est officia aliquip in labore excepteur est laboris culpa esse cillum veniam. Voluptate veniam non nulla do ea.'),
          _Ingredient(
              mesure: '',
              text:
                  'Dolor minim consectetur cillum est. Ut enim irure cillum nisi esse dolore. Velit cillum culpa mollit est culpa.'),
          SizedBox(height: 10),
          _Ingredient(
              mesure: '',
              text:
                  'Dolor minim consectetur cillum est. Ut enim irure cillum nisi esse dolore. Velit cillum culpa mollit est culpa.'),
          SizedBox(height: 10),
          _Ingredient(
              mesure: '',
              text:
                  'Dolor minim consectetur cillum est. Ut enim irure cillum nisi esse dolore. Velit cillum culpa mollit est culpa.'),
          SizedBox(height: 10),
          _Ingredient(
              mesure: '',
              text:
                  'Dolor minim consectetur cillum est. Ut enim irure cillum nisi esse dolore. Velit cillum culpa mollit est culpa.'),
          SizedBox(height: 10),
          _Ingredient(
              mesure: '',
              text:
                  'Dolor minim consectetur cillum est. Ut enim irure cillum nisi esse dolore. Velit cillum culpa mollit est culpa.'),
          SizedBox(height: 10),
        ]);
  }
}

class _Ingredients extends StatelessWidget {
  const _Ingredients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Ingredients',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        _Ingredient(mesure: '2', text: 'Eggs'),
        _Ingredient(mesure: '1 Cup', text: 'All pourpose flour'),
        _Ingredient(mesure: '1/2 Cup', text: 'Whole milk'),
        _Ingredient(mesure: '2 Tablespoon', text: 'Butter')
      ],
    );
  }
}

class _Ingredient extends StatelessWidget {
  const _Ingredient({
    Key? key,
    required this.mesure,
    required this.text,
  }) : super(key: key);

  final String mesure;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            color: Colors.amber,
            size: 10,
          ),
          const SizedBox(width: 20),
          Text(
            mesure,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.clip,
            ),
          )
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        height: 110,
        width: 68,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(40)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 55,
            height: 55,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Icon(icon),
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(subtitle,
              style:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 8,
          )
        ]),
      ),
    );
  }
}
