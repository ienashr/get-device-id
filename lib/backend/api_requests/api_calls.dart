import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TransactionsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'transactions',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.data[:].amount''',
        true,
      );
  static dynamic categories(dynamic response) => getJsonField(
        response,
        r'''$.data[:].categories''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.data[:].date_created''',
        true,
      );
}

class CategoriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'categories',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
}

class CreateTransactionCall {
  static Future<ApiCallResponse> call({
    double? amount,
    int? categories,
  }) {
    final body = '''
{
  "amount": ${amount},
  "categories": ${categories}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createTransaction',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.data.amount''',
      );
  static dynamic categories(dynamic response) => getJsonField(
        response,
        r'''$.data.categories''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class UpdateTransactionCall {
  static Future<ApiCallResponse> call({
    double? amount,
    String? id = '',
    int? categories,
  }) {
    final body = '''
{
  "amount": ${amount},
  "categories": ${categories}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateTransaction',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.data.amount''',
      );
  static dynamic categories(dynamic response) => getJsonField(
        response,
        r'''$.data.categories''',
      );
}

class DeleteTransactionCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteTransaction',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TransactionduaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'transactiondua',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NyobaPatchlagiCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
  "amount": 444445555,
  "categories": 1 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nyobaPatchlagi',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/transactions/dc8eae55-3202-47ab-bc9b-6b29c2e0e715',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
