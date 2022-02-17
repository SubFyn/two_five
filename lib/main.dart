import 'package:flutter/material.dart';

void main() {
  runApp(const DemoListScreen());

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

