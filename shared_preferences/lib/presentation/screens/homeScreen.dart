import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/userModel.dart';
import '../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences pref;
  User? user = null;

  @override
  void initState() {
    initPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 109, 238),
      appBar: AppBar(
        title:
            user != null ? Text("Welcome, ${user!.username}") : Text("Welcome"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      body: user != null
          ? Center(
              child: Column(
              children: [
                Text("Username : ${user!.username}"),
                const SizedBox(
                  height: 16,
                ),
                Text("Email : ${user!.email}"),
                const SizedBox(
                  height: 16,
                ),
              ],
            ))
          : const SizedBox(),
    );
  }

  void initPreferences() async {
    pref = await SharedPreferences.getInstance();

    setState(() {
      user = User.fromJson(jsonDecode(pref.getString("userData")!));
    });
  }

  void logout() async {
    pref.setBool("isLogin", false);

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => Wrapper()));
  }
}
