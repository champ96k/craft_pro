import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(bool isHover) builder;

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()
      ..translate(0, -4, 0)
      ..scale(1.1);
    final transform = _isHover ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => _onEnter(true),
      onExit: (event) => _onEnter(false),
      child: AnimatedContainer(
        curve: Curves.bounceInOut,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(_isHover),
      ),
    );
  }

  void _onEnter(bool value) {
    setState(() => _isHover = value);
  }
}
