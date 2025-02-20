import 'package:ofer/core/model/home/response_model/product_list/product_list_response_model.dart';

abstract class HomeRepo {
  Future<List<ProductListResponseModel>> getProducrs();
}
