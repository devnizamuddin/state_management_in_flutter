class Rx<T> {
  T _value;
  final List<void Function(T)> _listeners = [];

  Rx(this._value);

  T get value => _value;

  set value(T newValue) {
    if (_value != newValue) {
      _value = newValue;
      _notifyListeners();
    }
  }

  void listen(void Function(T) listener) {
    _listeners.add(listener);
    listener(_value); // Initial callback
  }

  void _notifyListeners() {
    for (var listener in _listeners) {
      listener(_value);
    }
  }
}
