import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/widgets/containerCv.dart';

class Rows extends StatefulWidget {
  Rows({Key? key}) : super(key: key);

  @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  late TextEditingController _controller;
  String textFiledValue = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    textFiledValue = _controller.text;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFF5B8),
        appBar: AppBar(
          title: Text(
            'Curriculum Vitae',
            style:
                GoogleFonts.archivo(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xff7E1717),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose what is required',
                style: GoogleFonts.archivo(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: const Color(0xff7E1717)),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ContainerForCv(
                      textValue: 'PERSONAL INFO', iconData: Icons.person),
                  const SizedBox(
                    width: 20,
                  ),
                  ContainerForCv(
                      textValue: 'EDUCATIONS',
                      iconData: Icons.cast_for_education,),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ContainerForCv(
                      textValue: "SKILLS", iconData: Icons.psychology,
                      inKwell: (){
                        print('SKILLS');
                      }),


                  const SizedBox(
                    width: 20,
                  ),
                  ContainerForCv(
                      textValue: 'LANGUAGES', iconData: Icons.language,
                  inKwell: (){
                        print('LANGUAGES');
                  }),
                ],
              ),
            ],
          ),
        )

        //Column(
        //   children: [
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     //height: 50.0,
        //     //width: double.infinity,
        //     // decoration: BoxDecoration(
        //     //  // borderRadius: BorderRadius.circular(10.0),
        //     // ),
        //     // child: TextField(
        //     //   controller: _controller,
        //     //   decoration: InputDecoration(
        //     //       labelText: "Enter Number",
        //     //       focusedBorder:outlineInputBorder(color: Colors.amber),
        //     //       enabledBorder: outlineInputBorder(color: Colors.red),
        //     //       contentPadding:
        //     //           const EdgeInsets.only(left: 15.0, top: 15.0),
        //     //       counterText: '',
        //     //       prefixIcon: IconButton(
        //     //         icon: const Icon(
        //     //           Icons.numbers,
        //     //           color: Color(0xff6F1848),
        //     //         ),
        //     //         onPressed: () {},
        //     //       ),
        //     //       suffixIcon: IconButton(
        //     //         icon: SizedBox(
        //     //           width: 25,
        //     //           height: 25,
        //     //           child: Image.network(
        //     //             'https://cdn-icons-png.flaticon.com/512/8877/8877188.png',
        //     //             color: const Color(0xff6F1848),
        //     //           ),
        //     //         ),
        //     //         onPressed: () {},
        //     //       )),
        //     //   maxLength: 10,
        //     //   style: GoogleFonts.archivo(fontWeight: FontWeight.bold),
        //     //   autocorrect: true,
        //     //   keyboardType: TextInputType.number,
        //     //   textInputAction: TextInputAction.search,
        //     //   onChanged: (val) {
        //     //     setState(() {
        //     //       _controller.text = val;
        //     //     });
        //     // //     _controller.selection = TextSelection.fromPosition(
      //         //     //         TextPosition(offset: _controller.text.length));
        //
        //     //   },
        //     //   onSubmitted: (term) {
        //     //     if (mounted) {
        //     //       setState(() {
        //     //         print('Vision Plus');
        //     //         // if (_textForChip.contains(_searchEditingController.text))
        //     //         //   ;
        //     //         // else {
        //     //         //   _textForChip.add(_searchEditingController.text);
        //     //         // }
        //     //       });
        //     //     }
        //     //   },
        //     // ),
        //   ),
        // ),
        // Text(
        //   _controller.text.isEmpty ? "Vision Plus" : _controller.text,
        //   style: GoogleFonts.archivo(
        //       fontSize: 24, fontWeight: FontWeight.bold),
        // )
        // ],
        // )
        );
  }

  OutlineInputBorder outlineInputBorder({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(width: 2, color: color));
  }
}
