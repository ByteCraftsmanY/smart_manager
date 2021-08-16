import 'package:flutter/material.dart';


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
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
