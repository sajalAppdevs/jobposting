import 'package:flutter/material.dart';
import 'package:jobposting/screens/AddJob.dart';

import '../appbuttons.dart';
import '../textField.dart';
import 'job_listing.dart';

class EditJob extends StatefulWidget {
  String postiontext = "";
  String desctext = "";
  EditJob({required this.postiontext, required this.desctext});

  @override
  State<EditJob> createState() => _EditJobState(postiontext, desctext);
}

class _EditJobState extends State<EditJob> {
  String postiontext;
  String desctext;
  _EditJobState(this.postiontext, this.desctext);

  @override
  Widget build(BuildContext context) {
    TextEditingController job_position_title = TextEditingController()
      ..text = postiontext;
    TextEditingController desc_position_title = TextEditingController()
      ..text = desctext;
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
                      "Edit job",
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
                controller: job_position_title,
                style: const TextStyle(fontSize: 15, color: Colors.white),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff1E1C24),
                border:
                    Border.all(color: Color.fromRGBO(93, 93, 103, 1), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: desc_position_title,
                maxLines: 11,
                style: const TextStyle(fontSize: 15, color: Colors.white),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                var data = Methodtitle(
                    job_position_title.text, desc_position_title.text);
                Navigator.pop(context, data);
              },
              child: appbuttons(label: "Update Job", onPress: () {}),
            )
          ],
        ),
      ),
    );
  }
}

class EditData {
  final positionTitle;
  final positionDescr;

  EditData(this.positionTitle, this.positionDescr);
}
