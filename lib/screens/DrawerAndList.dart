import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/rowAndColumnandTextFiled.dart';

class DrawerAndListViewsTwo extends StatefulWidget {
  const DrawerAndListViewsTwo({Key? key}) : super(key: key);

  @override
  State<DrawerAndListViewsTwo> createState() => _DrawerAndListViewsTwoState();
}

class _DrawerAndListViewsTwoState extends State<DrawerAndListViewsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Ahmed Agha"),
                subtitle: Text("ahmed.m.j.agha@hotmail.com"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ),
            );
          }),
      drawer: Drawer(
        child: ListView(
          children: [buildHeader(context), builedItem(context)],
        ),
      ),
      // drawer: Drawer(
      //   child: ListView.builder(itemBuilder: (context,index){
      //     return Text("Vision Plus");
      //   }),
      // ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
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
            height: 30,
          )
        ],
      ),
    );
  }

  Widget builedItem(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RowsAndColumnsWidget()));
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
    );
  }
}

/*
*  body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.cyan,
            child: ListTile(),
          );
        },
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
      ),
      *
      * */
