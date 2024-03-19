import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gtr_app/src/core/base/collection_base.dart';
import 'package:gtr_app/src/core/models/company_model.dart';

abstract interface class FirebaseService {
  Stream<List<Company>> findAll();
}

class FirebaseServiceImp extends FirebaseService {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Stream<List<Company>> findAll() {
    return db.collection(CollectionBase.collection).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Company.fromJson(doc.data())).toList();
    });
  }
}
