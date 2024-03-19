enum AsyncState { initial, loading, load, failure }

extension AsyncStatus on AsyncState {
  bool get initial => this == AsyncState.initial;

  bool get loading => this == AsyncState.loading;

  bool get load => this == AsyncState.load;

  bool get failure => this == AsyncState.failure;
}
