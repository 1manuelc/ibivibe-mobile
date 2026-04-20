import 'package:ibiapabaapp/features/businesses/domain/entities/business.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests.dart';

enum ProfileType { personal, business }

enum BusinessRole { owner, admin, editor, viewer }

class Profile {
  final String id;
  final String slug;
  final String displayName;
  final String bio;
  final String avatarUrl;
  final ProfileType type;

  final DateTime createdAt;
  final DateTime updatedAt;

  final ProfileInterests? interests;
  // TODO: centralizar roles de negócio e pessoal aqui (exige mudança no banco, account_profile)
  final BusinessRole? businessRole;
  final Business? business;

  Profile({
    required this.id,
    required this.slug,
    required this.displayName,
    required this.bio,
    required this.avatarUrl,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    this.interests,
    this.business,
    this.businessRole,
  });
}
