import 'package:cloud_firestore/cloud_firestore.dart';

import 'constants/firebase.dart';

class OrderRepository {
  final firestore = FirebaseFirestore.instance;

  create(){
    
  }

  read(String id) async {
    final r = await firestore.collection(orderCollection).doc(id).get();
    return r.data();
  }
}
