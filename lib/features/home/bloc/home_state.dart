import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fulcrum/application/models/sites_data.dart';


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String? message,
    List<Site>? sites,
  }) = _HomeState;
}
