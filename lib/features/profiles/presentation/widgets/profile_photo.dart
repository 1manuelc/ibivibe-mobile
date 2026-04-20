import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';

class ProfilePhoto extends StatelessWidget {
  final Profile? profile;
  final double imgSize;
  final bool isSelected;
  final Color? borderColor;

  const ProfilePhoto({
    required this.profile,
    super.key,
    required this.imgSize,
    this.isSelected = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imgSize,
      height: imgSize,
      decoration: ShapeDecoration(
        color: context.theme.colors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: isSelected
              ? BorderSide(
                  color: borderColor ?? context.theme.colors.primary,
                  width: 1.4,
                )
              : BorderSide.none,
        ),
      ),
      child: Icon(
        profile == null
            ? Icons.device_unknown_rounded
            : profile!.type == ProfileType.personal
            ? Icons.person_rounded
            : profile!.type == ProfileType.business
            ? Icons.business_rounded
            : Icons.person_rounded,
        size: imgSize / 1.5,
        color: context.theme.colors.secondaryForeground,
      ),
    );
  }
}
