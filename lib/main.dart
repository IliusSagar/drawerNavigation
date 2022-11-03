import 'package:flutter/material.dart';
import 'package:sass/user_page.dart';

import 'favourites_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SASS - Home'),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Colors.blue.shade700,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => const UserPage()),
            ));
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://miro.medium.com/max/968/1*RqQ0KppwlirfKPdYf6r4zg.png'),
                ),
                SizedBox(height: 12),
                Text(
                  'SASS CONNECT',
                  style: TextStyle(fontSize: 22, color: Colors.white70),
                ),
                Text(
                  'info@sassconnect.com',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.favorite_border),
                title: const Text('Favourites'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FavouritesPage(),
                  ));
                }),
            ListTile(
              leading: const Icon(Icons.workspaces_outlined),
              title: const Text('Workflow'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Updates'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Plugins'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('Notifications'),
              onTap: () {},
            ),
          ],
        ),
      );
}
