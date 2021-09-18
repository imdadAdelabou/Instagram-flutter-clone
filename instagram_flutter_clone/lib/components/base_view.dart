import 'package:flutter/widgets.dart';
import 'package:instagram_flutter_clone/locator.dart';
import 'package:instagram_flutter_clone/screens/base_model.dart';
import 'package:provider/provider.dart';

class BaseView<T extends BaseModel> extends StatelessWidget {
  final Widget Function(BuildContext context, T value, Widget? child)? builder;

  BaseView({this.builder});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => locator<T>(),
      child: Consumer<T>(builder: builder!),
    );
  }
}
