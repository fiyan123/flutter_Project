import 'package:flutter/material.dart';
import 'package:project_aplikasi/pages/edit_profile.dart';
import 'package:project_aplikasi/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EditProfile(),
    );
  }
}
