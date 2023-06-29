import 'package:nishamnotes/constants/services/auth/auth_user.dart';

/// An abstract class that defines the interface for authentication providers.
abstract class AuthProvider {
  /// Returns the currently logged in user, or null if there is no logged in user.
  AuthUser? get currentUser;

  /// Logs in the user with the given [email] and [password].
  /// Returns the authenticated user.
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  /// Creates a new user with the given [email] and [password].
  /// Returns the authenticated user.
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  /// Logs out the currently logged in user.
  Future<void> logOut();

  /// Sends an email verification to the currently logged in user.
  Future<void> sendEmailVerification();
}
