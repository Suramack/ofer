import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ofer/util/enum/category_enum.dart';
part 'home_state_model.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) CategoryEnum? selectedCatory,
  }) = _HomeState;
}
