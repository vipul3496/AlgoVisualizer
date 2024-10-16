import 'package:algovis/logic/sorting_controller.dart';
import 'package:algovis/widgets/borded_container.dart';
import 'package:flutter/material.dart';

class AlgoButton extends StatelessWidget {
  const AlgoButton({
    required this.title,
    required this.sortingController,
    super.key,
  });
  final String title;
  final SortingController sortingController;
  @override
  Widget build(BuildContext context) {
    final bool selected = sortingController.algorithm.toLowerCase() == title.toLowerCase();
    return MyBordedContainer(
      color: selected ? Colors.deepPurple : null,
      child: TextButton(
        onPressed: () => sortingController.setAlgorithm = title,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: selected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
