import 'package:flutter/material.dart';

// import 'main.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Favourites'),
          backgroundColor: Colors.green,
        ),
      );
}
