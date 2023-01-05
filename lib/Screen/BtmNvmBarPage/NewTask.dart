import 'package:flutter/material.dart';
import 'package:task_manezer_app/Widget/colors.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        automaticallyImplyLeading: false,
        leadingWidth: 50,
        leading: ListTile(
          leading: CircleAvatar(),
          title: Text("rabbil Hasan"),
          subtitle: Text("rabbilhasanb@gmail.com"),
        ),
        actions: [],
      ),
    );
  }
}
