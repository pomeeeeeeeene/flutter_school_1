import 'package:flutter/material.dart';

// じゃんけんのサンプルゲーム
class JankenSamplePage extends StatefulWidget {
  // extendでStatelessWidgetを継承
  const JankenSamplePage(
      {super.key, required this.title}); // コンストラクタ（初期化処理をするためのもの）
  final String title; // requiredがあるため必須で値を渡す必要がある

  @override
  State<JankenSamplePage> createState() => _JankenSamplePage();
}

class _JankenSamplePage extends State<JankenSamplePage> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset("Hand.rock.image"),
                  ),
                  Text("結果：あなたの勝ちです", style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset("Hand.rock.image"),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset("Hand.rock.image"),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset("Hand.rock.image"),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

// じゃんけんの手のenumを用意
enum Hand { paper, rock, scissors }

// 拡張機能(imagesのじゃんけん画像のパスを取得するために用意)
extension HandImages on Hand {
  String get image {
    switch (this) {
      case Hand.paper:
        return "images/paper.png";
      case Hand.rock:
        return "images/rock.png";
      case Hand.scissors:
        return "images/scissors.png";
    }
  }
}
