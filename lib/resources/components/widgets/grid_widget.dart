import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  final Widget? child;
  final int? crossAxisCount;
  final double? crossAxisSpacing;
  final double? mainAxisSpacing;
  final double? childAspectRatio;
  final int? itemCount;
  final Function()? onTap;
  const GridWidget(
      {super.key,
      this.child,
      this.crossAxisCount,
      this.crossAxisSpacing,
      this.mainAxisSpacing,
      this.itemCount,
      this.childAspectRatio,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount ?? 2,
            crossAxisSpacing: crossAxisSpacing ?? 0,
            mainAxisSpacing: mainAxisSpacing ?? 0,
            childAspectRatio: childAspectRatio ?? 1.00),
        itemCount: itemCount ?? 0,
        itemBuilder: (context, index) {
          return child;
        },
      ),
    );
  }
}
