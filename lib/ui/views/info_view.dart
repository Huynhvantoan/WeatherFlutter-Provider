import 'package:flutter/material.dart';
import 'package:github/core/enums/view_state.dart';
import 'package:github/core/viewmodels/weather_model.dart';
import 'base_view.dart';
import 'package:github/ui/shared/app_colors.dart';
import 'package:github/ui/widgets/user_widget.dart';
import 'package:github/ui/shared/text_styles.dart';

class InfoView extends StatelessWidget {
  String _input;

  InfoView(this._input);

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileModel>(
      onModelReady: (model) => model.getInfoProfile(_input),
      builder: (context, model, child) => Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Back', style: headerStyle,),
              ),
              model.state == ViewSate.Loading
                  ? userLoadingWidget()
                  : model.state == ViewSate.Error || model.user == null
                      ? userErrorWidget("")
                      : userSuccessWidget(model.user),
            ],
          )),
    );
  }

}
