import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

class CurrentUser extends Equatable {
  const CurrentUser({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  final String id;
  final String email;
  final String name;
  final String? picture;

  static const empty = CurrentUser(
    id: '',
    email: '',
    name: '',
    picture: '',
  );

  /// to modify CurrentUser
  CurrentUser copyWith({
    String? id,
    String? email,
    String? name,
    String? picture,
  }) {
    return CurrentUser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  /// convenience getter to check if current user is empty
  bool get isEmpty => this == CurrentUser.empty;

  /// convenience getter to check if current user is not empty
  bool get isNotEmpty => this != CurrentUser.empty;

  CurrentUserEntity toEntity() {
    return CurrentUserEntity(
      id: id,
      email: email,
      name: name,
      picture: picture ?? picture,
    );
  }

  CurrentUser fromEntity(CurrentUserEntity entity) {
    return CurrentUser(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      picture: entity.picture,
    );
  }

  @override
  List<Object?> get props => [id, email, name, picture];
}
