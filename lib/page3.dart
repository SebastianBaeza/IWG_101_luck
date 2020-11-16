import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina 3'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Preferencia"),
              subtitle: Text("Subtitulo"),
              onTap: () {},
            ),
            Divider(),
            CheckboxListTile(
              value: false,
              title: Text("This is a CheckBoxPreference"),
              onChanged: (value) {},
            ),
            Divider(),
            SwitchListTile(
              value: false,
              title: Text("This is a SwitchPreference"),
              onChanged: (value) {},
            ),
            Divider(),
            ListTile(
              title: Text("Preferencia"),
              subtitle: Text("Subtitulo"),
              onTap: () {},
            ),
            Divider(),
            SwitchListTile(
              value: false,
              title: Text("This is a SwitchPreference"),
              onChanged: (value) {},
            ),
            Divider(),
            SwitchListTile(
              value: false,
              title: Text("This is a SwitchPreference"),
              onChanged: (value) {},
            ),
          ],
        ));
  }
}
