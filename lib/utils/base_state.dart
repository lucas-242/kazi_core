enum StateStatus { loading, error, success, noData, initial }

enum ViewState { create, read, update }

class BaseState {
  BaseState({
    required this.status,
    this.callbackMessage = '',
    this.viewState = ViewState.read,
  });
  final StateStatus status;
  final String callbackMessage;
  final ViewState viewState;

  T when<T>({
    required T Function(BaseState state) onState,
    T Function(BaseState state)? onInitial,
    T Function(BaseState error)? onError,
    T Function()? onLoading,
    T Function()? onNoData,
  }) {
    switch (status) {
      case StateStatus.loading:
        return onLoading != null ? onLoading() : onState(this);
      case StateStatus.noData:
        return onNoData != null ? onNoData() : onState(this);
      case StateStatus.error:
        return onError != null ? onError(this) : onState(this);
      case StateStatus.initial:
        return onInitial != null ? onInitial(this) : onState(this);
      default:
        return onState(this);
    }
  }

  BaseState copyWith({
    StateStatus? status,
    String? callbackMessage,
    ViewState? viewState,
  }) {
    return BaseState(
      status: status ?? this.status,
      callbackMessage: callbackMessage ?? this.callbackMessage,
      viewState: viewState ?? this.viewState,
    );
  }
}
