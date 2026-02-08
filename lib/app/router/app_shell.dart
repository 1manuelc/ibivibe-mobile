import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/shared/ui/navbar.dart';

class AppShell extends StatefulWidget {
  final Widget child;
  const AppShell({super.key, required this.child});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  DateTime? _lastBackPressed;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final locationIsHome = location == '/app/home';

    return PopScope(
      canPop: !locationIsHome,
      onPopInvokedWithResult: (didPop, _) {
        if (!locationIsHome || didPop) return;

        final now = DateTime.now();

        if (_lastBackPressed == null ||
            now.difference(_lastBackPressed!) > const Duration(seconds: 2)) {
          _lastBackPressed = now;

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                behavior: .fixed,
                duration: const Duration(seconds: 2),
                elevation: 10,
                shape: Border.all(color: Colors.grey.shade800),
                backgroundColor: Colors.black,
                content: Text(
                  textAlign: .center,
                  'Volte novamente para sair',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
        } else {
          exit(0);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: widget.child),
              const Navbar(),
            ],
          ),
        ),
      ),
    );
  }
}
