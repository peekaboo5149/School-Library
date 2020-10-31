import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:new_project1/provider/edited_text_web.dart';
import 'package:new_project1/provider/edited_text.dart';
import 'package:new_project1/screens/home_screen.dart';
import 'package:provider/provider.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var editer = Provider.of<EditedText>(context);
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('EDIT'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (String value) {
                editer.setName(value);
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(68))),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (String value) {
                editer.setRoll(value);
              },
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  // focusColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  labelText: "Roll Number",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(68))),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (String value) {
                editer.setDepartment(value);
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  // focusColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  labelText: "Department",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(68))),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gender:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.0),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      backgroundColor: Colors.white,
                      label: Text(
                        'Male',
                        style: TextStyle(color: Colors.black),
                      ),
                      selected: editer.gender,
                      selectedColor: Colors.blue,
                      onSelected: (value) {
                        editer.setGender();
                      },
                    ),
                    ChoiceChip(
                      backgroundColor: Colors.white,
                      label: Text(
                        'Female',
                        style: TextStyle(color: Colors.black),
                      ),
                      selected: !editer.gender,
                      selectedColor: Colors.blue,
                      onSelected: (value) {
                        editer.setGender();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CupertinoButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context)=>HomeScreen()), (route) => false);
            },
            child: Text(
              "SUBMIT",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
