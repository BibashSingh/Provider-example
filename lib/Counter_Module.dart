import 'package:flutter/material.dart';

class countermodel extends ChangeNotifier {
int count =0;
int get _count=>count;

void increment(){
  count++;
  notifyListeners();
}
}