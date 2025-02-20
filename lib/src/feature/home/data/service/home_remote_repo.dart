import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/core/model/home/response_model/product_list/product_list_response_model.dart';
import 'package:ofer/core/network/end_point.dart';
import 'package:ofer/core/network/network.dart';
import 'package:ofer/src/feature/home/data/repo/home_repo.dart';
import 'package:ofer/util/enum/network_status.dart';

class HomeRemoteRepo implements HomeRepo {
  @override
  Future<List<ProductListResponseModel>> getProducrs() async {
    var response = await NetworkClient.get(endPoint: EndPoint.products);

    if (response?.statusCode == NetworkStatus.status200.statusCode) {
      final List<dynamic> jsonList = json.decode(response?.body ?? '');
      final productList = jsonList
          .map((jsonItem) => ProductListResponseModel.fromJson(jsonItem))
          .toList();
      return productList;
    } else {
      return [];
      // throw Exception(Strings.somethingWentWrong);
    }
  }
}

final homeRemoteRepoProvider =
    Provider<HomeRemoteRepo>((res) => HomeRemoteRepo());
