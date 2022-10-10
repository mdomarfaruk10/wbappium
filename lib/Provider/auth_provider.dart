import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';

class AuthProvider extends ChangeNotifier {
  UsersModel _usersModel = UsersModel();

  UsersModel get usersModel => _usersModel;


  set usersModel(UsersModel value) {
    _usersModel = value;
    notifyListeners();
  }



  Future<void> createAccount(String email, String password) async {
    print('Firebase account created');
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password);
    print('Firebase account created');
  }

  Future<void> signIn(String email, String password) async {
    // Sign in with Firebase
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email,
        password: password);
    print('Firebase signed in');
  }

  Future delete(BuildContext context,String bid) async {
    try {
      await FirebaseFirestore.instance.collection('userList').doc(bid)
          .delete();
      notifyListeners();
    } catch (e) {
      print(e);
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully Remove')));
  }


  // Future<void> addFaculty(BuildContext context, UsersModel facultyModel
  //     ) async {
  //   try {
  //     final int timeStamp = DateTime.now().millisecondsSinceEpoch;
  //     // String fid=facultyModel.fphone!+timeStamp.toString();
  //     String fid = facultyModel.uphone!;
  //     final String submitDate = DateFormat("dd-MMM-yyyy/hh:mm:aa")
  //         .format(DateTime.fromMillisecondsSinceEpoch(timeStamp));
  //
  //     await FirebaseFirestore.instance.collection('userList').doc(fid).set({
  //       'id': fid,
  //       'upassword': facultyModel.upassword,
  //       'uname': facultyModel.uname,
  //       'uphone': facultyModel.uphone,
  //       'submitdate': submitDate.toString(),
  //       'timestamp': timeStamp.toString(),
  //     });
  //     Navigator.pop(context);
  //
  //     // showSnackBar(scaffoldKey, 'Question submitted successful',
  //     //     Theme.of(context).primaryColor);
  //     //return true;
  //   } catch (e) {}
  // }
  //
  // Future<void> getFaculty() async {
  //   //final String id = await getPreferenceId();
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('userList')
  //         .get()
  //         .then((snapShot) {
  //       userlist.clear();
  //       snapShot.docChanges.forEach((element) {
  //         UsersModel users = UsersModel(
  //           id: element.doc['id'],
  //           uname: element.doc['uname'],
  //           uphone: element.doc['uphone'],
  //         );
  //         userlist.add(users);
  //       });
  //     });
  //     // print("Length: " + _facultyList.length.toString());
  //     notifyListeners();
  //   } catch (error) {
  //     error.toString();
  //   }
  }