import 'package:flutter/material.dart';
import 'package:study/countup_sample_page.dart';
import 'package:study/hello_page.dart';
import 'package:study/navigation_sample_page.dart';
import 'package:study/top_page.dart';
import 'package:study/whiget_textfield_sample_page.dart';
import 'package:study/widget_sample_page.dart';

void main() {
  // dartはmainからスタート。起動した時に最初に実行されるもの
  runApp(const MyApp()); // constは定数
}

// アプリ全体の設定クラス
class MyApp extends StatelessWidget {
  // StatelessWidgetを継承している
  // StatelessWidgetとは
  // 「状態を持たない」場合に利用する
  // 静的（画面を変更する必要がない）

  const MyApp({super.key});
  @override // オーバーライド（StatelessWidgetのメソッドを上書き）
  Widget build(BuildContext context) {
    return MaterialApp(
        // Androidのデザイン
        title: 'Flutter Demo', // タイトル
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/", // 最初に起動した時の表示する画面
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => const TopPage(title: 'Flutter サンプル'),
          "/countup": (BuildContext context) =>
              const MyHomePage(title: 'カウントアップ'),
          "/widget": (BuildContext context) =>
              const WidgetSamplePage(title: 'Widgetサンプル'),
          "/widget_text_field": (BuildContext context) =>
              const WidgetTextFieldSamplePage(title: 'TextFieldサンプル'),
          "/navigation": (BuildContext context) =>
              const NavigationSamplePage(title: 'Navigationサンプル'),

          //"/hello": (BuildContext context) =>
          //    const HelloPage(title: 'Hello', name: 'matumoto'),
        },
        onGenerateRoute: (settings) {
          final args = settings.arguments;
          switch (settings.name) {
            case "/hello":
              return MaterialPageRoute(
                  builder: (context) => HelloPage(title: 'Hello', name: args));
          }
        });
  }
}
