import 'package:flutter/material.dart';

// HelloPage(他の画面から引数 (値) を受け取る)
class HelloPage extends StatefulWidget {
  // extendでStatelessWidgetを継承
  const HelloPage(
      {super.key, required this.title, this.name}); // コンストラクタ（初期化処理をするためのもの）
  final String title; // requiredがあるため必須で値を渡す必要がある
  final Object? name; // requiredがないので人で値を渡すことができる

  @override
  State<HelloPage> createState() => _HelloPage();
}

class _HelloPage extends State<HelloPage> {
  // フィールド(変数などを作成する領域)

  @override // 親クラスのStatelessWidgetのbuildメソッドを上書き
  Widget build(BuildContext context) {
    return Scaffold(
      // 全体のレイアウトの作成
      appBar: AppBar(
        // アップバーはヘッダーのこと
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // ヘッダータイトル
      ),
      body: SingleChildScrollView(
        // bodyはヘッダー以外の画面全体の部分
        child: Center(
          // 中央寄せ
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // 縦にコンテンツを配置
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello !! ${widget.name ?? 'no name'}",
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/", (route) => false);
                    },
                    child: const Text(
                      'Topページに戻る',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
