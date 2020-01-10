enum Method {
  GET,
  POST,
  UPLOAD,
  DOWNLOAD,
}

class ResultData {
  var data;

  bool result;

  ResultData(this.data, this.result) {
    print('最后数据:$result--$data');
  }
}

class HttpService {
  final Map<String, dynamic> headers;
  final String baseUrl;
  final BaseOptions dioOptions;

  HttpService(this.headers, this.baseUrl, this.dioOptions);

  get(String url,
      {Map<String, dynamic> params,
      @required Function onSuccess,
      @required Function onError}) async {
    return await request(url,method: Method.GET,pa)
  }
}
