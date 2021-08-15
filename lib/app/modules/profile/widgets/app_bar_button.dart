import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback callback;
  const AppBarButton({
    Key? key,
    required this.icon,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FaIcon(
            icon,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
