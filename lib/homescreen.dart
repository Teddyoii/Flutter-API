import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontendproject/networkfile.dart';
import 'package:frontendproject/user.dart';

class HomeScreen extends StatefulWidget {
  final String firstName;
  
  const HomeScreen({Key? key, required this.firstName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    getUsers();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.firstName),
      ),
      body: ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        User user = users[index];
        return Card(
          child: ListTile(
          title: Text(user.name!),
          subtitle: Text(user.email!),
              ),
        );
      }
    ),
    );
  }

  getUsers () async {
    try {
      dynamic response = await NetworkFile().get('https://jsonplaceholder.typicode.com/users');
      Iterable jsonList = jsonDecode(response) ;
      List<User> jsonData = List<User>.from(jsonList.map((model)=> User.fromJson(model)));
      setState(() {
        users = jsonData;
      });
    } catch (e) {
      print("error is "+e.toString());
    }
  }
}
