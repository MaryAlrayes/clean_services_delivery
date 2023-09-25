
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final Widget child;
  const StatCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            tileMode: TileMode.mirror,
            colors: [
              Color.fromARGB(255, 99, 143, 225),
              Color.fromARGB(255, 80, 165, 234)
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
