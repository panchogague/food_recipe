import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BackgroundImage();
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const Hero(
            tag: 'curry',
            child: FadeInImage(
                image: NetworkImage(
                    'https://lovefoodnourish.com/wp-content/uploads/2019/09/Easy-Coconut-Chicken-Curry-1-720x720.jpg'),
                placeholder: AssetImage('assets/loading.gif'),
                fit: BoxFit.fill),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton(
                      heroTag: "btn1",
                      backgroundColor: Colors.amber,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      )),
                  Spacer(),
                  FloatingActionButton(
                      heroTag: "btn2",
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: const Icon(
                        FontAwesomeIcons.bookmark,
                        color: Colors.black54,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageBackground extends StatelessWidget {
  const _ImageBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.amber[600],
      expandedHeight: MediaQuery.of(context).size.height * 0.35,
      floating: false,
      pinned: true,
      leading: Container(
        margin: const EdgeInsets.only(left: 10),
        child: FloatingActionButton(
            heroTag: "btn1",
            backgroundColor: Colors.amber,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      actions: [
        Container(
          width: 50,
          margin: const EdgeInsets.only(right: 10),
          child: FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: Colors.white,
              onPressed: () {},
              child: const Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black54,
              )),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          color: Colors.black12,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 10),
        ),
        background: const Hero(
          tag: 'curry',
          child: FadeInImage(
              image: NetworkImage(
                  'https://lovefoodnourish.com/wp-content/uploads/2019/09/Easy-Coconut-Chicken-Curry-1-720x720.jpg'),
              placeholder: AssetImage('assets/loading.gif'),
              fit: BoxFit.fill),
        ),
      ),
    );
    ;
  }
}
