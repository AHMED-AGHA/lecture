import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TextEditingController _controller;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Login Screen'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("This Is a snackbar!"),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    behavior: SnackBarBehavior.floating,
                     duration: Duration(seconds: 1),
                  ),
                );
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: const Text("This Is a snackbar!"),
                //   backgroundColor: Colors.red,
                //   behavior: SnackBarBehavior.floating,
                //
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(24),
                //       side: const BorderSide(width: 2, color: Colors.white)),
                // ));
              },
              icon: const Icon(Icons.account_balance_rounded,
                  color: Colors.green, size: 40),
            ),
            TextButton(
                onPressed: () {
                  _showDialog(context: context);
                },
                child: const Text('Show Dialog')),
            ElevatedButton(
                onPressed: () {
                  //Navigator.pop(context);
                  Navigator.pushNamed(context, '/Home_screen');
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                  //  Navigator.pushNamed(context, "/Home_Screen");
                },
                child: const Text('Navigator')),
            Container(
              //height: 50,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(28)),
              child: TabBar(
                controller: _tabController,
                labelColor: const Color(0xffD25380),
                unselectedLabelColor: Colors.amber,
                labelStyle: GoogleFonts.archivo(
                    fontWeight: FontWeight.bold, fontSize: 18),
                //indicatorColor: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(
                    text: 'Tab 2',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Home(),
                Home(),
              ]),
            )
          ],
        ));
  }
}

void _showDialog({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (context) => Dialog(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            backgroundColor: Colors.green,
            child: Container(
              color: Colors.white,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure you want to delete this item?',
                    style: GoogleFonts.archivo(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: Size(100, 40)),
                        onPressed: () {},
                        child: Text('Yes',
                            style: GoogleFonts.archivo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size(100, 40)),
                        onPressed: () {
                          print('No');
                        },
                        child: Text('No',
                            style: GoogleFonts.archivo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}
