class ApiResponse<T> {
  bool isOperationSuccess;
  String message;
  T? dataResponse;
  List<T>? dataResponseList;

  ApiResponse({
    required this.isOperationSuccess,
    required this.message,
    required this.dataResponse,
    required this.dataResponseList,
  });

  factory ApiResponse.fromMap(
    Map<String, dynamic> item,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return ApiResponse(
      isOperationSuccess: item['IS_OPERATION_SUCCESS'],
      message: item['MESSAGE'],
      dataResponse: item['DATA_RESPONSE'] != null
          ? fromJson(item['DATA_RESPONSE'])
          : null,
      dataResponseList: item['DATA_RESPONSE_LIST'] != null
          ? (item['DATA_RESPONSE_LIST'] as List)
              .map((e) => fromJson(e))
              .toList()
          : null,
    );
  }
}
