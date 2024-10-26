import 'package:flutter/material.dart';

// widgetを自分で自作して他で使いまわせるようにする
class HelloContentWidget extends StatelessWidget {
  const HelloContentWidget({Key? key}) : super(key: key);

  // サンプルのためHelloWorldを訪寺しているが使いまわしたいものであればwidget化すると良い
  // 天気養蜂場、検索ボックス、占い、広告etc 同じレイアウトが他画面に複数ある場合はwidget貸した方が良い
  // widget化する場合はscaffoldはしない (scaffoldすると画面になってしまう)
  @override
  Widget build(BuildContext context) {
    return const Text("hello world !!",
        style: TextStyle(fontSize: 18, color: Colors.red));
  }
}
