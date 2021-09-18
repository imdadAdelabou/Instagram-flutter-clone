import "package:flutter/material.dart";
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/screens/home/home_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: [
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
