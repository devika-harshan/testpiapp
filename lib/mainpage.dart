import 'package:flutter/material.dart';
import 'apihandler.dart';

import 'model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ApiHandler apiHandler = ApiHandler();
  late List<Users> data = [];

  void getData() async {
    data = await apiHandler.getUserData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  ();
                },
                leading: Text("${data[index].id}"),
                title: Text(data[index].name),
                subtitle: Text(data[index].password),
              );
            },
          ),
        ],
      ),
    );
  }
}
