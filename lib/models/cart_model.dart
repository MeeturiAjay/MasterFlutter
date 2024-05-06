import 'package:masterflutter/models/catalog.dart';

class CartModel {
  late CatalogModels _catalog;

  final List<int> _itemIds = [];

  CatalogModels get catalog => _catalog;

  set catalog(CatalogModels newcatalog){
    assert(catalog != null);
    _catalog = newcatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total+current.price);

  void add(Item item){
    _itemIds.add(item.id);
  }

  void remove(Item item){
    _itemIds.remove(item.id);
  }

}