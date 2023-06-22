import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewsTwo extends StatefulWidget {
  const ListViewsTwo({Key? key}) : super(key: key);

  @override
  State<ListViewsTwo> createState() => _ListViewsTwoState();
}

class _ListViewsTwoState extends State<ListViewsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.amber,
            width: 500,
          ), Container(
            color: Colors.red,
            width: 500,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [buildHeader(context), builedItem(context)],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const CircleAvatar(
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
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'ahmed.m.j.agha@hotmail.com',
            style: GoogleFonts.archivo(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }

  Widget builedItem(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/login_screen');
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
