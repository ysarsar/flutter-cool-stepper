import 'package:cool_stepper/cool_stepper.dart';
import 'package:cool_stepper/src/models/cool_step.dart';
import 'package:flutter/material.dart';

class CoolStepperView extends StatelessWidget {
  final CoolStep step;
  final VoidCallback? onStepNext;
  final VoidCallback? onStepBack;
  final EdgeInsetsGeometry? contentPadding;
  final CoolStepperConfig? config;

  const CoolStepperView({
    Key? key,
    required this.step,
    this.onStepNext,
    this.onStepBack,
    this.contentPadding,
    required this.config,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final content = Expanded(
      child: SingleChildScrollView(
        padding: contentPadding,
        child: step.content,
      ),
    );

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [content],
      ),
    );
  }
}
