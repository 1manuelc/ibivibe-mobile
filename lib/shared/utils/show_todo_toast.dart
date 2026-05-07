import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:ibiapabaapp/shared/ui/fragments/toast/show_app_toast.dart';

void showTodoToast(BuildContext context, String page) {
  final theme = context.theme;
  // TODO: implementar a funcionalidade real de cada redirect
  showAppToast(
    context: context,
    title: Text(
      'TODO: redirecionar para $page',
      style: theme.typography.sm.copyWith(
        color: theme.colors.foreground,
      ),
    ),
  );
}
