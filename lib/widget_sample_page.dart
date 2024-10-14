import 'package:flutter/material.dart';
import 'package:study/alert_sample_dialog.dart';

// ウィジェットのサンプルページ
class WidgetSamplePage extends StatelessWidget {
  // extendでStatelessWidgetを継承
  const WidgetSamplePage(
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return const AlertSampleDialog();
                      });
                },
                child: const Text(
                  'ログアウト',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              // widgetはflutterのレイアウトコンテンツ
              const Text(
                'Widgetサンプル(Text)',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
              Container(
                  width: 350,
                  height: 350,
                  color: Colors.green,
                  child: Container(
                    color: Colors.blue,
                    width: 300,
                    height: 300,
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(50),
                    alignment: Alignment.center,
                    child: Container(color: Colors.white),
                  )),
              Container(
                  width: 200,
                  height: 600,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Hello World',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const Row(
                // 横にコンテンツを配置
                children: <Widget>[
                  Text(
                    'Hellow ',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'World',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
              const SizedBox(
                  height: 60,
                  width: 60,
                  child: ColoredBox(color: Colors.green)),
              const Padding(
                // 左右上下のスペース
                padding:
                    EdgeInsets.all(8), // allは左右上下を8dp(android),8px(iphone,web)
                child: Text("Hello"),
              ),
              Stack(
                // 順番にコンテンツを上に重ねる
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.access_alarm, // デフォルトで用意されているアイコン
                    color: Colors.yellow,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              ),
              Image.asset('images/apple.png'), // imagesフォルダの中のapple.pngを表示
              ListView(
                shrinkWrap: true, // 高さを調整するために必要（レイアウトが表示しないため必要）
                children: const <Widget>[
                  ListTile(title: Text('Hello')),
                  ListTile(title: Text('Hello'))
                ],
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                  );
                },
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.blue,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        'World',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // アナログなやり方でコンテナを必要な分だけ並べる
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  Container(
                    color: Colors.red,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    margin: const EdgeInsets.all(10.0),
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // 動的もう少しアナログ感を無くして実装
              // 例えばメルカリの商品情報をサーバーから引っ張ってきて表示するなどで使える
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  for (int i = 0; i < boxColors.length; i++) ...{
                    // flutter仕様で動的にwidgetを表示する（for,if文）と場合に必要
                    Container(
                      color: boxColors[i],
                      margin: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          '${i + 1}', // 文字列展開
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  }
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// カラーボックスのリストボックス
final List<Color> boxColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
  Colors.pink,
  Colors.teal,
];
