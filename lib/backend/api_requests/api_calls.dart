import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ListagenBannersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'listagenBanners',
      apiUrl: 'http://177.44.248.68/app/banner/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic 16a4f6bdf46bfb392fbb4788bf6c3c9df3ae7fd49acb79205627d6363706',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic dados(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$.foto''',
      );
}

class VerBannerCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verBanner',
      apiUrl: 'http://177.44.248.68/app/banner/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic 16a4f6bdf46bfb392fbb4788bf6c3c9df3ae7fd49acb79205627d6363706',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic statusapi(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$.foto''',
      );
  static dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$.data.descricao''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.data.longitude''',
      );
  static dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.data.latitude''',
      );
  static dynamic criadoem(dynamic response) => getJsonField(
        response,
        r'''$.data.created_at''',
      );
  static dynamic obs(dynamic response) => getJsonField(
        response,
        r'''$.data.obs''',
      );
}

class CriarBannerCall {
  static Future<ApiCallResponse> call({
    String? descricao = '',
    double? latitude,
    double? longitude,
    String? obs = '',
    String? foto = '',
  }) async {
    final ffApiRequestBody = '''
{
  "pessoa_id": 5,
  "descricao": "${descricao}",
  "status": "ATIVO",
  "longitude": "${longitude}",
  "latitude": "${latitude}",
  "foto": "${foto}",
  "obs": "${obs}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarBanner',
      apiUrl: 'http://177.44.248.68/app/banner/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic 16a4f6bdf46bfb392fbb4788bf6c3c9df3ae7fd49acb79205627d6363706',
      },
      params: {},
      body: ffApiRequestBody,
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
