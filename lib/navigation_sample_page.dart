import 'package:flutter/material.dart';

// Navigationのサンプルページ
class NavigationSamplePage extends StatelessWidget {
  // extendでStatelessWidgetを継承
  const NavigationSamplePage(
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9ECEFF),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/hello");
                  },
                  child: const Text(
                    'Helloページへ(引数なし)',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
