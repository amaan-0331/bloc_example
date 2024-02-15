import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/user_repository.dart';

abstract class UserRepository {
  Stream<User?> get user;

  /// sign in
  Future<void> signIn(String email, String password);

  /// sign out
  Future<void> signOut();

  /// sign up
  Future<CurrentUser> signUp(CurrentUser user, String password);

  /// reset password
  Future<void> resetPassword(String email);

  /// set user data
  Future<void> setUserData(CurrentUser user);

  /// get current user
  Future<CurrentUser> getCurrentUser(String userId);
}
