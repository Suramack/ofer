class BaseDynamicResponse<T> {
  final int status;
  final T data;

  BaseDynamicResponse({required this.status, required this.data});

  factory BaseDynamicResponse.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) {
    return BaseDynamicResponse<T>(
      status: json['status'] as int,
      data: fromJsonT(json['data']),
    );
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) {
    return {
      'status': status,
      'data': toJsonT(data),
    };
  }
}
