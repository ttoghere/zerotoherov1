import 'package:flutter/material.dart';

class SecondLearn extends StatelessWidget {
  SecondLearn({Key? key}) : super(key: key);

  final List<BottomNavigationBarItem> _bottomList = const [
    BottomNavigationBarItem(icon: Icon(Icons.add), label: "A"),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: "B"),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Sayfanın yatay taraflarından gelebilen bağımsız alan
      drawer: const Drawer(),
      //Sayfanın altından gelebilen bağımsız alan
      bottomSheet: BottomSheet(
        onClosing: () => null,
        builder: (context) => Text("A"),
      ),
      //Sayfa içinde konumu değiştirilebilen işlevsel bağımsız buton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      //Sayfanın alt kısmında bulunan ve sayfa geçişlerini kolaylaştıran ikonlu ve açıklamalı çubuk
      bottomNavigationBar: BottomNavigationBar(items: _bottomList),
    );
  }
}
