import 'package:flutter/foundation.dart';
class FirstExample with ChangeNotifier{
int _Count = 0;
int get count=>_Count;
void additem()
{
  _Count++;
  notifyListeners();
}
}