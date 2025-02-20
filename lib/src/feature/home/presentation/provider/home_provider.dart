import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/core/model/home/state_model/home_state_model.dart';
import 'package:ofer/src/feature/home/data/service/home_remote_repo.dart';
import 'package:ofer/util/enum/category_enum.dart';

final homeProvider = StateNotifierProvider<HomeNotifierProvider, HomeState>(
    (ref) => HomeNotifierProvider(ref));

class HomeNotifierProvider extends StateNotifier<HomeState> {
  HomeNotifierProvider(this.ref) : super(const HomeState());

  final Ref ref;

  CategoryEnum? get selectedCatory => state.selectedCatory;

  Future<void> getProductList() async {
    var res = await ref.read(homeRemoteRepoProvider).getProducrs();
  
    log(res.length.toString());
    log(res.firstOrNull?.categoryEnum?.toString() ?? 'Obj');
  }
}
