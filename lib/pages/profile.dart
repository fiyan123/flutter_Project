import 'dart:ui';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  final String id, name, bio, image;
  profile({required this.name, required this.id, required this.bio, required this.image});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.add_sharp,color: Colors.black,),
        title: Text(
          widget.id,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            const Divider(height: 1),
            SizedBox( 
              height: 30,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.image),
            ),
            const SizedBox(width: 24,),
            Expanded(child: Column(children: [
              Text('0', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('post', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            ),
            Expanded(child: Column(children: [
              Text('117', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('pengikut', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            ),
            Expanded(child: Column(children: [
              Text('20', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('mengikuti', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            )
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                
              ),
              ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.bio, style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              ),
                ],
                
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container(
              height: 30,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Edit Profile', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
            SizedBox(height: 4),
            Expanded(child: Container(
              height: 30,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Promotions', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
            SizedBox(height: 4),
            Expanded(child: Container(
              height: 30,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Insight', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
              ],   
              ),
            )
          ],
        ),
      ),
    );
  }
}
