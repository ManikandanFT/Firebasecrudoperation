import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  String id;
  String name;

  Item({required this.id, required this.name});


  factory Item.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Item(
      id: doc.id,
      name: data['name'] ?? '',
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
