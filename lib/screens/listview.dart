import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/polymerphism.dart';

class ListViews extends StatefulWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  State<ListViews> createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("Vision Plus"),
                    subtitle: Text("Vision Plus"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.delete),
                  ),
                );
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            buildHeader(context),
            builedItem(context)
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => InkWell(
        onTap: () {},
        child: Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg'),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Ahmed Agha',
                style: GoogleFonts.archivo(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'ahmed.m.j.agha@hotmail.com',
                style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      );

  Widget builedItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16.0,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // do something
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Home_screen');
            },
          ),
          ListTile(
            leading: const Icon(Icons.category_rounded),
            title: const Text('Categories'),
            onTap: () {
              // do something
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite'),
            onTap: () {
              // do something
            },
          ),
          Divider(
            color: Colors.black87,
          ),
          ListTile(
            leading: const Icon(Icons.notification_add),
            title: const Text('Notifications'),
            onTap: () {
              // do something
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // do something
            },
          ),
        ],
      ),
    );
  }
}
