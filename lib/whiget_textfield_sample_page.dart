import 'package:flutter/material.dart';

// ウィジェットのサンプルページ
class WidgetTextFieldSamplePage extends StatefulWidget {
  // extendでStatelessWidgetを継承
  const WidgetTextFieldSamplePage(
      {super.key, required this.title}); // コンストラクタ（初期化処理をするためのもの）
  final String title;

  @override
  State<WidgetTextFieldSamplePage> createState() =>
      _WidgetTextFieldSamplePage();
}

class _WidgetTextFieldSamplePage extends State<WidgetTextFieldSamplePage> {
  // フィールド(変数などを作成する領域)
  String _inputText = ""; // テキストフィールドにユーザーが入力した値を保持

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
                // widgetはflutterのレイアウトコンテンツ
                TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'アカウント名',
                  ),
                  onChanged: (value) {
                    // テキストの値が変更されたたびに呼ばれるトリガー 値はvalueに入る
                    setState(() {
                      _inputText = value; // フィールド変数に代入
                    });
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9ECEFF),
                  ),
                  onPressed: () {
                    // ボタンを押すたびに呼ばれるトリガー
                    setState(() {
                      _inputText;
                    });
                  },
                  child: const Text(
                    "更新",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Text(
                  _inputText,
                  style: const TextStyle(
                      fontSize: 32,
                      color: Color(0xFFC68EFF),
                      fontWeight: FontWeight.bold),
                ),

                Text(
                  _inputText,
                  style: const TextStyle(
                      fontSize: 32,
                      color: Color(0xFF8E8EFF),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
