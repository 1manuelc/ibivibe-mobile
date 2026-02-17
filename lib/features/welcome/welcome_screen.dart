import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:ibiapabaapp/features/welcome/widgets/welcome_actions.dart';
import 'package:ibiapabaapp/features/welcome/widgets/welcome_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return FScaffold(
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: .center,
              spacing: 32,
              children: [WelcomeHeader(), WelcomeActions()],
            ),
          ),
        ),
      ),
    );
  }
}
