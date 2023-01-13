import 'package:app_preco_markup/screens/home.dart';
import 'package:flutter/material.dart';

class ShowDrawer extends StatefulWidget {
  ShowDrawer({key});

  @override
  State<ShowDrawer> createState() => _ShowDrawerState();
}

class _ShowDrawerState extends State<ShowDrawer> {
  int _index = 0;

  _switcherBody() {
    switch (_index) {
      case 0:
        return Home();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _switcherBody(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF7BAC),
        leading: IconButton(
          padding: const EdgeInsets.all(10),
          icon: Image.asset("assets/icon-splash.png"),
          onPressed: () => null,
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0xFFFF7BAC),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            ListTile(
              title: const Text(
                'Aprenda a cálcular seus preços (em breve)',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  _index = 0;
                });
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
