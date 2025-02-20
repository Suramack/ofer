enum NetworkStatus {
  status200(statusCode: 200, message: 'OK'),
  status400(statusCode: 400, message: 'Bad Request '),
  status401(statusCode: 401, message: 'Unauthorized'),
  status429(statusCode: 429, message: 'Too Many Requests'),
  status500(statusCode: 500, message: 'Server Error');

  const NetworkStatus({required this.statusCode, required this.message});
  final int statusCode;
  final String message;
}

enum ActionStatus {
  success(code: 1, message: 'OK'),
  failure(code: 2, message: 'OK');

  const ActionStatus({required this.code, required this.message});
  final int code;
  final String message;
}
