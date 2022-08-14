import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(children: const [
          SizedBox(width: 10),
          Expanded(
            child: TextField(
                decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.blueGrey,
              ),
              border: InputBorder.none,
              labelText: 'Search any recipe',
            )),
          ),
          Spacer(),
          _FilterButton(),
          SizedBox(width: 3)
        ]),
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: SizedBox(
        width: 45,
        height: 45,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          child: const Icon(FontAwesomeIcons.sliders, size: 20),
        ),
      ),
    );
  }
}
