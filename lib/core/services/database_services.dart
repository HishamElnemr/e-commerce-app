abstract class DatabaseService {
  Future<void> addData(
    String path,
    Map<String, dynamic> data,
    String documentId,
  );
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? queryParameters,
  });
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  });
}
