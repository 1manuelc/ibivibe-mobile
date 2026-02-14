import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

FButtonStyles getButtonStyles({
  required FColors colors,
  required FTypography typography,
  required FStyle style,
}) {
  return FButtonStyles.inherit(
    colors: colors,
    typography: typography,
    style: style,
  ).copyWith(
    /// PRIMARY
    primary: (base) =>
        buttonStyle(
          colors: colors,
          typography: typography,
          style: style,
          color: colors.primary,
          foregroundColor: colors.primaryForeground,
        ).copyWith(
          contentStyle: base.contentStyle
              .copyWith(
                textStyle: FWidgetStateMap<TextStyle>.all(
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colors.primaryForeground,
                  ),
                ),
              )
              .call,
        ),
  );
}

FButtonStyle buttonStyle({
  required FColors colors,
  required FTypography typography,
  required FStyle style,
  required Color color,
  required Color foregroundColor,
  bool boldText = false,
}) => FButtonStyle(
  decoration: FWidgetStateMap({
    WidgetState.disabled: BoxDecoration(
      borderRadius: style.borderRadius,
      color: colors.disable(color),
    ),
    WidgetState.hovered | WidgetState.pressed: BoxDecoration(
      borderRadius: style.borderRadius,
      color: colors.hover(color),
    ),
    WidgetState.any: BoxDecoration(
      borderRadius: style.borderRadius,
      color: color,
    ),
  }),
  focusedOutlineStyle: style.focusedOutlineStyle,

  contentStyle:
      FButtonContentStyle.inherit(
        typography: typography,
        enabled: foregroundColor,
        disabled: colors.disable(foregroundColor, colors.disable(color)),
      ).copyWith(
        textStyle: FWidgetStateMap<TextStyle>.all(
          boldText
              ? const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
              : const TextStyle(fontSize: 16),
        ),
      ),

  iconContentStyle: FButtonIconContentStyle(
    iconStyle: FWidgetStateMap({
      WidgetState.disabled: IconThemeData(
        color: colors.disable(foregroundColor, colors.disable(color)),
        size: 20,
      ),
      WidgetState.any: IconThemeData(color: foregroundColor, size: 20),
    }),
  ),

  tappableStyle: style.tappableStyle,
);
