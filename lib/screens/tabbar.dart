import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/prefernces/shared_prefernce_controller.dart';
import 'package:lecture4/screens/home.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Container(
              //height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(28)),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.red,
                labelStyle: GoogleFonts.archivo(
                    fontWeight: FontWeight.bold, fontSize: 18),
                unselectedLabelStyle: GoogleFonts.archivo(
                    fontWeight: FontWeight.bold, fontSize: 14),
                //indicatorColor: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: 'Courses',
                  ),
                  Tab(
                    text: 'Programs',
                  ),
                  Tab(
                    text: 'Programs',
                  ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Home(),
                Home(),
                Home(),
              ]),
            )
          ],
        ));
  }
}
