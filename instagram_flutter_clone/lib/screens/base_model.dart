import 'package:flutter/cupertino.dart';
import 'package:instagram_flutter_clone/utils/constant.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;
  void setState(ViewState value) {
    _state = value;
    ChangeNotifier();
  }

  ViewState get getState => _state;
}
