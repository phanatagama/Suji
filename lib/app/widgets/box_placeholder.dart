import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BoxPlaceholder extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  const BoxPlaceholder({
    super.key,
    this.width = 24.0,
    this.height = 100.0,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
      ),
    );
  }
}
