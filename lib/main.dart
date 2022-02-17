import 'package:flutter/material.dart';

void main() {
  runApp(const DemoListScreen());
  Map<String, int> map1 = {'zero': 0, 'one': 1, 'two': 2};
  print(map1);
// not specify key-value type
  Map map2 = {'zero': 0, 'I': 'one', 10: 'X'};
  print(map2);
  var map3 = {'zero': 0, 'I': 'one', 10: 'X'};
  print(map3);
}
class DemoListScreen extends StatelessWidget {
  const DemoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Задание 2.5'),
        ),
        body: const ListPreview(),
      ),
    );
  }
} //основной виджет экрана


class ListPreview extends StatefulWidget {
  const ListPreview({Key? key}) : super(key: key);

  @override
  _ListPreviewState createState() => _ListPreviewState();
} //виджет списка

class _ListPreviewState extends State<ListPreview> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
            selected: index == _selectedIndex,
            selectedColor: Colors.green,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );

    },
    );
  }
} //виджет списка

class User{
  String name = 'Имя';
  String phone = 'Телефон';
}

