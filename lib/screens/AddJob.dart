import 'package:flutter/material.dart';
import 'package:jobposting/appbuttons.dart';
import 'package:jobposting/screens/job_listing.dart';

class addignjob extends StatefulWidget {
  const addignjob({Key? key}) : super(key: key);

  @override
  State<addignjob> createState() => _addignjobState();
}

class _addignjobState extends State<addignjob> {
  TextEditingController titlefieldController = TextEditingController();
  TextEditingController desfieldController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff191720),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 27, bottom: 30, right: 27),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => listjobs()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Add New job",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF1E1C24),
                  border: Border.all(color: Color(0xff5D5D67), width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: titlefieldController,
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Position Name",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xff8F8F9E))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff1E1C24),
                border: Border.all(color: Color(0xff5D5D67), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: desfieldController2,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Describe Requirement...",
                    hintStyle:
                        TextStyle(color: Color(0xff8F8F9E), fontSize: 15)),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                onSave(context);
              },
              child: appbuttons(
                  label: "Submit",
                  onPress: () {
                    onSave(context);
                  }),
            )
          ],
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    var data = Methodtitle(titlefieldController.text, desfieldController2.text);
    Navigator.pop(context, data);
  }
}

class Methodtitle {
  String first;
  String second;
  Methodtitle(this.first, this.second);
}
