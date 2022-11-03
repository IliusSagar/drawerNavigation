import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text('SASS LOGO'),
        ),
        body: Image.network(
            'https://miro.medium.com/max/968/1*RqQ0KppwlirfKPdYf6r4zg.png'),
      );
}
