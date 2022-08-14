import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipe_app/widgets/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.circlePlus,
                  size: 35,
                ),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookmark), label: 'Favorites')
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const CustomSearchBar(),
          const CategoryList(),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
            child: Text(
              'Popular Recipes',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            children: const [
              Hero(
                tag: 'curry',
                child: PopularRecipes(
                  title: 'Chicken Curry',
                  category: 'Asian',
                  duration: '15 min',
                  rate: '4.5',
                  urlImg:
                      'https://lovefoodnourish.com/wp-content/uploads/2019/09/Easy-Coconut-Chicken-Curry-1-720x720.jpg',
                ),
              ),
              PopularRecipes(
                title: 'Sushi',
                category: 'Japannese',
                duration: '30 min',
                rate: '5.0',
                urlImg:
                    'https://fusedbyfionauyema.com/wp-content/uploads/2021/02/Fused-by-Fiona-Uyema-Sushi-Q-A-how-to-make-sushi-at-home-500x500.jpg',
              ),
              PopularRecipes(
                title: 'Vegan Paella',
                category: 'Vegan',
                duration: '40 min',
                rate: '3.0',
                urlImg:
                    'https://images.immediate.co.uk/production/volatile/sites/2/2020/04/Sunblush-tomato-paellla-dcf247c-scaled.jpg?quality=90&resize=700,466',
              ),
            ],
          )),

          //PopularRecipes()
        ],
      ),
    );
  }
}
