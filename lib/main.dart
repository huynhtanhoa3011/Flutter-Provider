import 'package:flutter/material.dart';
import 'package:lession13_provider_app/counter_model.dart';
import 'package:lession13_provider_app/counter_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<CounterModel>(create: (context) => CounterModel()),
    ],
    child: MaterialApp(
      home: CounterView(),
    ),);
  }
}

/*
Provider là một trong những giải pháp để quản lý state trong lập trình ứng dụng flutter
Khi sử dụng Provider, các bạn chỉ cần nhớ các bước quan trọng sau :
 1. Khai báo thư viện provider trong pubspec.yaml và import vào dự án
 2. Triển khai các model với ChangeNotifier và insert : notifyListeners(); vào các hàm thực thi
 3. Khai báo trong các widget cha ví dụ trong hàm main.dart với MyApp
 */






















