import 'package:flutter/widgets.dart';
import 'package:weather/core/enums/view_state.dart';

class BaseModel extends ChangeNotifier{
  ViewSate _state = ViewSate.Loading;

  ViewSate get state => _state;

  void setState(ViewSate value) {
    _state = value;
    notifyListeners();
  }
}