import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_aplikasi/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController idController = new TextEditingController();
  TextEditingController bioController = new TextEditingController();
  TextEditingController imageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: CloseButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
              print('back to previous page');
            },
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: bioController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Description',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: imageController,
                  decoration: InputDecoration(
                    labelText: 'Photo URL',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  onPressed: () {
                    if (nameController.text == '') {
                      // showAlertDialogMaterial('please input your name');
                      showAlertDialogCupartino('please input your name');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profile(
                              id: idController.text,
                              name: nameController.text,
                              bio: bioController.text,
                              image: imageController.text),
                        ),
                      );
                    }
                    print(nameController.text);
                  },
                ),
              ),
            ],
          )),
    );
  }

  showAlertDialogMaterial(Text) {
    var globalkey;
    showDialog(
      context: globalkey.currentContext,
      builder: (_) => AlertDialog(
        title: Text('Info'),
        content: Text(Text),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(globalkey.currentContext);
              print('Clicked No!');
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
            },
          ),
        ],
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: true,
    );
  }

  showAlertDialogCupartino(Text) {
    var globalkey;
    showDialog(
      context: globalkey.currentContext,
      builder: (_) => CupertinoAlertDialog(
        title: Text('Info'),
        content: Text(Text),
        actions: [
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(globalkey.currentContext);
              print('Clicked No!');
            },
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
            },
          ),
        ],
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: false,
    );
  }
}
