import 'package:flutter/cupertino.dart';
import 'package:test_test/models/bike.dart';
import 'package:test_test/widgets/specific_card.dart';

class Cart extends ChangeNotifier{
List<BikeItem> _items=[];
double _totalprice=0.0;


void add(BikeItem item){
  _items.add(item);
  _totalprice+=item.price;
  notifyListeners();
  
}
void remove(BikeItem item){
  _totalprice-=item.price;
  _items.remove(item);
  notifyListeners();
}
int get count {
  return _items.length;
}
double get totalprice{
  return _totalprice;
}
List<BikeItem> get basketItems{
  return _items;
}
}