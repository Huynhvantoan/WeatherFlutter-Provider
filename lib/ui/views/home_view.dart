import 'package:flutter/material.dart';
import 'package:github/ui/shared/app_colors.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeView> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Github name',
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black),
                controller: _textEditingController,
                focusNode: null,
                style: null,
                cursorColor: null,
                autofocus: true),
            RaisedButton(
              onPressed: () async {
                /* var success = await model.getInfoProfile(_textEditingController.value.text);
                    if (success) {
                      Navigator.pushNamed(context, '/info', arguments: _textEditingController.value.text);
                    }*/
                Navigator.pushNamed(context, '/info',
                    arguments: _textEditingController.value.text);
              },
              child: Text('Search'),
            )
          ],
        ));
  }
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
