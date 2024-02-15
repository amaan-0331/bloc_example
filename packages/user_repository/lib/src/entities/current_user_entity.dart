import 'package:equatable/equatable.dart';

class CurrentUserEntity extends Equatable {
  const CurrentUserEntity({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });
  final String id;
  final String email;
  final String name;
  final String? picture;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'picture': picture,
    };
  }

  static CurrentUserEntity fromMap(Map<String, dynamic> map) {
    return CurrentUserEntity(
      id: map['id'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      picture: map['picture'] as String?,
    );
  }

  @override
  List<Object?> get props => [id, email, name, picture];

  @override
  String toString() {
    return '''
UserEntity: {
      'id': $id,
      'email': $email,
      'name': $name,
      'picture': $picture,
}
''';
  }
}
