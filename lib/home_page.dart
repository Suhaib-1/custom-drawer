import 'package:flutter/material.dart';

import 'drawer/drawer_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Custom Drawer',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Container(),
        ),
        body: Center(
          child: Image.network(
              'https://im4.ezgif.com/tmp/ezgif-4-b63089ce3f.gif',width: 250,),

        ),
        drawer: const CustomDrawer());
  }
}
