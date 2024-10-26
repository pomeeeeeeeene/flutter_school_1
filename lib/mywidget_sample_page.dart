import 'package:flutter/material.dart';
import 'package:study/widget/Hello_content_widget.dart';

// Mywidgetのサンプルページ
class MywidgetSamplePage extends StatelessWidget {
  // extendでStatelessWidgetを継承
  const MywidgetSamplePage(
      {super.key, required this.title}); // コンストラクタ（初期化処理をするためのもの）
  final String title;

  @override // 親クラスのStatelessWidgetのbuildメソッドを上書き
  Widget build(BuildContext context) {
    return Scaffold(
      // 全体のレイアウトの作成
      appBar: AppBar(
        // アップバーはヘッダーのこと
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title), // ヘッダータイトル
      ),
      body: SingleChildScrollView(
        // bodyはヘッダー以外の画面全体の部分
        child: Center(
          // 中央寄せ
          child: Column(
            // 縦にコンテンツを配置
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HelloContentWidget(),
              HelloContentWidget(),
              HelloContentWidget(),
              HelloContentWidget()
            ],
          ),
        ),
      ),
    );
  }
}
