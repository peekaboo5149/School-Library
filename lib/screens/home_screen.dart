import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:new_project1/provider/edited_text_web.dart';
import 'package:new_project1/provider/edited_text.dart';
import 'package:new_project1/screens/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var editer = Provider.of<EditedText>(context);
    return Scaffold(
      // drawer: Drawer(),
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        title: Text(
          'School Library ID',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (context) => Settings()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(editer.gender?'images/male.png':'images/woman.png'),
              radius: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:28.0,vertical: 28.0),
              child: Divider(color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:28.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Name:",style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.w600,letterSpacing: 2.0),),
                        Text(editer.name,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Roll No:",style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.w600,letterSpacing: 2.0),),
                        Text(editer.roll,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Department:",style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.w600,letterSpacing: 2.0),),
                        Text(editer.department,style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:28.0),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Wrap(
                    children: [
                      Text('IEM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
