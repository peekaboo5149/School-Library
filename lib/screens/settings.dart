import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:new_project1/provider/edited_text_web.dart';
import 'package:new_project1/provider/edited_text.dart';
import 'package:new_project1/screens/edit.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var editer = Provider.of<EditedText>(context);
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 18.0, 28.0, 0.0),
          child: Column(
            children: [
              ListTile(
                title: Text('Edit',
                    style: TextStyle(color: Colors.white, fontSize: 28)),
                onTap: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => EditPage()));
                },
                leading: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Change Theme',style: TextStyle(color: Colors.white),),
                  Switch(
                    value: editer.theme,
                    onChanged: (value) {
                      editer.setTheme(value);
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.black,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
