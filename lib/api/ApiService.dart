import 'HttpService.dart';

class ApiService {
  static ApiService _apiService;

  static ApiService getInstance() {
    if (_apiService == null) {
      _apiService = ApiService._internal();
    }
    return _apiService;
  }

  ApiService._internal();

  void getUserInfo(String token, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("user", onSuccess: success, onError: error);
  }
}
