import 'package:cloud_functions/cloud_functions.dart';

class AuthService {
  final FirebaseFunctions functions = FirebaseFunctions.instance;

  Future<Map<String, dynamic>> registerUser(String email, String password) async {
    try {
      final HttpsCallable callable = functions.httpsCallable('registerUser');
      final HttpsCallableResult result = await callable.call({
        'email': email,
        'password': password,
      });

      return result.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }
}
