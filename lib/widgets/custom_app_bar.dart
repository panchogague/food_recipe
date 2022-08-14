import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SlideInUp(
        child: Container(
          width: double.infinity,
          height: size.height * 0.22,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _TopAppBar(),
              const SizedBox(height: 18),
              const Text(
                'Hello, Francisco!',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text('Make your own food,',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Row(
                children: const [
                  Text(
                    'stay at ',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text('home',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _TopAppBar extends StatelessWidget {
  const _TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white60, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 6,
                offset: const Offset(4, 8), // Shadow position
              ),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://www.eaglesvine.com/wp-content/uploads/2021/06/Gabbie-Carter_05.jpg')),
        ),
      ),
      const Spacer(),
      const _BellNotification()
    ]);
  }
}

class _BellNotification extends StatelessWidget {
  const _BellNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          const Icon(
            FontAwesomeIcons.bell,
            color: Colors.grey,
          ),
          Positioned(
            top: 0,
            right: 0.0,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.amber, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
