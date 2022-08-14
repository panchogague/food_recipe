import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:food_recipe_app/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      //   const DetailAppBar(),
      //   SliverList(delegate: SliverChildListDelegate([const DetailRecipe()]))
      // ]),

      body: Stack(
        children: const [DetailAppBar(), _DraggableDetail()],
      ),
    );
  }
}

class _DraggableDetail extends StatelessWidget {
  const _DraggableDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.60,
        maxChildSize: 0.80,
        minChildSize: 0.60,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              child: const DetailRecipe(),
            ),
          );
        });
  }
}
