import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestIntent extends Intent {
  TestIntent();
}

class GlobalShortcut extends StatelessWidget {
  GlobalShortcut({Key key, this.child}) : super(key: key);
  final Widget child;
  final _shortcuts = {
    LogicalKeySet(LogicalKeyboardKey.f1): TestIntent(),
  };

  final _actions = {
    TestIntent: CallbackAction(onInvoke: (_) => print('f1 pressed'))
  };

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      autofocus: true,
      shortcuts: _shortcuts,
      actions: _actions,
      child: child,
    );
  }
}
