import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'models/exceptions.dart';

class AuthRepository {
  AuthRepository({
    @visibleForTesting FirebaseAuth? auth,
  }) : _auth = auth ?? FirebaseAuth.instance;

  final FirebaseAuth _auth;

  Future<bool> createAccountWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (error) {
      if (kDebugMode) print(error.code);
      if (error.code == 'email-already-in-use') {
        throw EmailAlreadyInUseException();
      } else {
        throw AuthException();
      }
    } catch (error) {
      if (kDebugMode) print(error);
      throw AuthException();
    }
  }

  Future<bool> loginWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (error) {
      if (kDebugMode) print(error.code);
      if (error.code == 'wrong-password') {
        throw WrongPasswordException();
      } else if (error.code == 'user-not-found') {
        throw UserNotFoundException();
      } else {
        throw AuthException();
      }
    } catch (error) {
      if (kDebugMode) print(error);
      throw AuthException();
    }
  }

  Future<bool> logout() async {
    try {
      await _auth.signOut();
      return true;
    } on FirebaseAuthException {
      throw AuthException();
    } catch (error) {
      if (kDebugMode) print(error);
      throw AuthException();
    }
  }
}
