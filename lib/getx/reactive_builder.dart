import 'package:flutter/material.dart';

import 'rx.dart';

class ReactiveBuilder<T> extends StatefulWidget {
  final Rx<T> rx;
  final Widget Function(T) builder;

  const ReactiveBuilder({required this.rx, required this.builder, super.key});

  @override
  State<ReactiveBuilder<T>> createState() => _ReactiveBuilderState<T>();
}

class _ReactiveBuilderState<T> extends State<ReactiveBuilder<T>> {
  late T _value;

  @override
  void initState() {
    super.initState();
    _value = widget.rx.value;
    widget.rx.listen((val) {
      setState(() {
        _value = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) => widget.builder(_value);
}
