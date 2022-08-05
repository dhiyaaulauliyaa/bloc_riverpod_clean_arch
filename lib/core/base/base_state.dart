import 'package:freezed_annotation/freezed_annotation.dart';

import '../errors/failures.dart';

part 'base_state.freezed.dart';

@freezed
class BaseState<T> with _$BaseState<T> {
  const BaseState._();

  const factory BaseState.init() = _init<T>;
  const factory BaseState.loading() = _loading;
  const factory BaseState.success(T data) = _success<T>;
  const factory BaseState.error(Failure failure) = _error;

  bool get isInit => maybeWhen(init: () => true, orElse: () => false);

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isSuccess => maybeMap(success: (_) => true, orElse: () => false);

  bool get isError => maybeWhen(error: (_) => true, orElse: () => false);

  T? get data => maybeWhen(success: (data) => data, orElse: () => null);
}
