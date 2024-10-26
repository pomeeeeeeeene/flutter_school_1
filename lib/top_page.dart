import 'package:flutter/material.dart';

// トップページ
class TopPage extends StatefulWidget {
  const TopPage({super.key, required this.title});

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  String? returnValue; // 画面の戻り値を取得するための変数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/janken");
                    },
                    child: const Text(
                      'じゃんけんゲームページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/lifecycle");
                    },
                    child: const Text(
                      'Lifecycleページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/mywidget");
                    },
                    child: const Text(
                      'MyWidgetページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/countup");
                    },
                    child: const Text(
                      'CountUpページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/widget");
                    },
                    child: const Text(
                      'wodgetページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/widget_text_field");
                    },
                    child: const Text(
                      'TextFieldページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/hello",
                          arguments: "matsumoto");
                    },
                    child: const Text(
                      'Helloページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9ECEFF),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/navigation")
                          .then((value) => {
                                setState(() {
                                  returnValue = value.toString();
                                })
                              });
                    },
                    child: const Text(
                      'Navigationページ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Text("戻り値： ${returnValue ?? '戻り値なし'}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
