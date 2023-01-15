import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PMS Online'),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
  }

  Widget buildHeader(BuildContext context) =>
      Container(
        padding: EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top,
        ),
      );

  Widget buildMenuItems(BuildContext context) =>
      Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {},
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Favourites'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text('Workflow'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Updates'),
              onTap: () {},
            )
          ],
        ),
      );
}
