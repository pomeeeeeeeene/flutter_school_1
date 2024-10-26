import 'package:flutter/material.dart';

// ライフサイクルのサンプルページ
class LifecycleSamplePage extends StatefulWidget {
  // extendでStatelessWidgetを継承
  const LifecycleSamplePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<LifecycleSamplePage> createState() => _LifecycleSamplePage();
}

class _LifecycleSamplePage extends State<LifecycleSamplePage>
    with WidgetsBindingObserver {
  // 画面が開かれた時に呼ばれる
  @override
  void initState() {
    // 親クラスのinitStateメソッドを上書きする
    super.initState(); // 親クラスのinitStateメソッドを呼び出す
    WidgetsBinding.instance.addObserver(this);
    print("log: ${this} initState()");
  }

  // 画面が閉じた時に呼ばれる
  // 音楽アプリ、ゲームアプリであれば、画面をユーザーが閉じてるので音楽ならば音楽を止める、ゲームならばゲームを止める
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    print("log: ${this} dispose()");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("log: ${this} ${state}");
    if (state == AppLifecycleState.resumed) {
      print("log: ${this} resumed"); // アプリがフォアグラウンドに戻った時
      // もしも電話が鳴ってアプリが電話からアプリに戻ってきた時に呼ばれる
      // 音楽アプリ、ゲームアプリであれば、一時停止したものを解除して続きから
    } else if (state == AppLifecycleState.paused) {
      print("log: ${this} paused"); // アプリがバックグラウンドになった時
      // 音楽アプリ、ゲームアプリであれば、一旦停止処理 (音楽なら音を止める、ゲームならゲーム中断)
    } else if (state == AppLifecycleState.detached) {
      print("log: ${this} detached");
      // 画面インスタンスが破壊されたタイミングで呼ばれる (実際にはいつ呼ばれるかわからない)
      // その他のインスタンスのゴミをメモリから削除処理
    } else if (state == AppLifecycleState.inactive) {
      print("log: ${this} inactive"); // アプリがフォアグラウンド遷移前
    }
  }

  @override
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
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
