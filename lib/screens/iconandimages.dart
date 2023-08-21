import 'package:flutter/material.dart';
import 'package:lecture4/screens/alertDialog.dart';
import 'package:lecture4/screens/rowAndColumnandTextFiled.dart';

class IconsWidget extends StatefulWidget {
  const IconsWidget({Key? key}) : super(key: key);

  @override
  State<IconsWidget> createState() => _IconsWidgetState();
}

class _IconsWidgetState extends State<IconsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.ac_unit,
                color: Colors.amber,
                size: 100,
              ),
              IconButton(
                  iconSize: 100,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlertDialogShow()));
                    // Navigator.pushNamed(context, "/RowAndColumn");
                    // Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.ac_unit,
                    color: Colors.amber,
                  )),
              SizedBox(
                height: 40,
              ),
              // Image.network(
              //     "https://upload.wikimedia.org/wikipedia/commons/1/1d/Football_Pallo_valmiina-cropped.jpg"),
              // Image.asset("assets/images/arabiclanguage.png")
            ],
          ),
        ),
      ),
    );
  }
}
