import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/services/database_services.dart';

class FirestoreServices implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
    String path,
    Map<String, dynamic> data,
    String? documentId,
  ) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (documentId != null) {
      Query<Map<String, dynamic>> data = firestore.collection(path);
      if (queryParameters != null) {
        if (queryParameters['orderBy'] != null) {
          var orderByFields = queryParameters['orderBy'];
          var descending = queryParameters['descending'];
          data = data.orderBy(orderByFields, descending: descending);
        }
        if (queryParameters['limit'] != null) {
          var limit = queryParameters['limit'];
          data = data.limit(limit);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    } else {
      final data = await firestore.collection(path).get();
      return data.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    final data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
