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

  //获取用户信息
  void getUserInfo(String token, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("user", onSuccess: success, onError: error);
  }

  //获取用户所在的组列表
  void getUserGroups(
      String token, String userId, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("users/${userId}/groups", onSuccess: success, onError: error);
  }

  //获取某个组的仓库列表
  void getGroupRepo(
      String token, String groupId, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("groups/${groupId}/repos", onSuccess: success, onError: error);
  }

  //获取某个用户的仓库列表
  void getPersonRepo(
      String token, String loginId, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("users/${loginId}/repos", onSuccess: success, onError: error);
  }

  //获取某个仓库中的文章列表
  void getRepoArticles(
      String token, String nameSpace, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("repos/${nameSpace}/docs", onSuccess: success, onError: error);
  }

  //获取某个仓库的目录结构
  void getRepoDirectory(
      String token, String nameSpace, Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token})
        .get("repos/${nameSpace}/toc", onSuccess: success, onError: error);
  }

  //获取某篇文章的详细信息
  void getArticleDetail(String token, String nameSpace, String articleSlug,
      Function success, Function error) {
    HttpService(headers: {"X-Auth-Token": token}).get(
        "repos/${nameSpace}/docs/${articleSlug}",
        onSuccess: success,
        onError: error);
  }
}
