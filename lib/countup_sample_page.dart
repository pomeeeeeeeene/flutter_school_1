import 'package:flutter/material.dart';

// メイン画面(デフォルトのカウントアップページ)
class MyHomePage extends StatefulWidget {
  // extendでStatefulWidgetを継承
  // StatefulWidgetとは
  // 「状態を持つ」場合に利用する
  // 動的（画面が自動的に変わる要素がある）

  const MyHomePage({super.key, required this.title}); // コンストラクタ（初期化処理をするためのもの）
  final String title;
  @override // オーバーライド（親クラスが持っているメソッドを上書きすること）
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // _が先頭についているのはprivateに自動的になる
  int _counter = 0; // 最初の表示する数値は0

  // onPressedで呼ばれているメソッド（フローティングボタンが押された時のメソッド）
  void _incrementCounter() {
    setState(() {
      // 状態を変更する変数を画面に反映させるためのもの（statefulWidgetの中でのみ利用可能）
      _counter++; // インクリメントでcounterを1加算する
    });
  }

  @override // オーバーライド。Stateクラスが持っているメソッドbuildを上書き
  Widget build(BuildContext context) {
    // Flutterが宣言型UIと言われているのはコードでレイアウトを制作するため
    return Scaffold(
      // 全体のレイアウトの作成
      appBar: AppBar(
        // アップバーはヘッダーのこと
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("${widget.title} hello!!"), // ヘッダータイトル
      ),
      body: Center(
        // 中央寄せ // bodyはヘッダー以外の画面全体の部分
        child: Column(
          // 縦にコンテンツを配置
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // widgetはflutterのレイアウトコンテンツ
            const Text(
              'サンプル',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            const Text(
              'ボタンを押した回数',
            ),
            Text('$_counter',
                style: const TextStyle(fontSize: 80, color: Colors.blue)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 右下のボタン
        // _incrementCounterメソッドをボタンが押された時に呼び出している
        //onPressed: _incrementCounter, // onPressedはボタンを押した時の処理(画面の数値がカウントアップされる)

        // ボタンが押された時の処理を直接書く
        onPressed: () {
          setState(() {
            // 状態を変更する変数を画面に反映させるためのもの（statefulWidgetの中でのみ利用可能）
            _counter++; // インクリメントでcounterを1加算する
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.access_alarms),
      ),
    );
  }
}
