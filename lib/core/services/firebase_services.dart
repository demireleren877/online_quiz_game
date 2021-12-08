import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  CollectionReference games = FirebaseFirestore.instance.collection("games");
}
