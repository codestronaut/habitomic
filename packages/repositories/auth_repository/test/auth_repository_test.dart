import 'package:auth_repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MockFirebaseAuth mockAuth;
  late MockUser mockUser;
  late AuthRepository repository;

  setUp(() {
    mockUser = MockUser(
      isAnonymous: false,
      uid: 'user101',
      email: 'user@mail.com',
      displayName: 'User',
    );
  });

  const tEmail = 'user@mail.com';
  const tPassword = 'Pass101';
  const emailInUseCode = 'email-already-in-use';
  const wrongPasswordCode = 'wrong-password';
  const userNotFoundCode = 'user-not-found';

  group('create account with password', () {
    test(
      'should return boolean true when success',
      () async {
        mockAuth = MockFirebaseAuth(mockUser: mockUser);
        repository = AuthRepository(auth: mockAuth);
        final result = await repository.createAccountWithPassword(
          email: tEmail,
          password: tPassword,
        );
        expect(result, equals(true));
      },
    );

    test(
      'should throw exception when email already used',
      () async {
        mockAuth = MockFirebaseAuth(
          mockUser: mockUser,
          authExceptions: AuthExceptions(
            createUserWithEmailAndPassword: FirebaseAuthException(
              code: emailInUseCode,
            ),
          ),
        );
        repository = AuthRepository(auth: mockAuth);
        final result = repository.createAccountWithPassword(
          email: tEmail,
          password: tPassword,
        );
        expect(() => result, throwsA(isA<EmailAlreadyInUseException>()));
      },
    );
  });

  group('login with password', () {
    test('should return boolean true when successful', () async {
      mockAuth = MockFirebaseAuth(mockUser: mockUser);
      repository = AuthRepository(auth: mockAuth);
      final result = await repository.loginWithPassword(
        email: tEmail,
        password: tPassword,
      );
      expect(result, equals(true));
    });

    test('should throw exception when wrong password', () async {
      mockAuth = MockFirebaseAuth(
        mockUser: mockUser,
        authExceptions: AuthExceptions(
          signInWithEmailAndPassword: FirebaseAuthException(
            code: wrongPasswordCode,
          ),
        ),
      );
      repository = AuthRepository(auth: mockAuth);
      final result = repository.loginWithPassword(
        email: tEmail,
        password: tPassword,
      );
      expect(() => result, throwsA(isA<WrongPasswordException>()));
    });

    test('should throw exception when user not found', () async {
      mockAuth = MockFirebaseAuth(
        mockUser: mockUser,
        authExceptions: AuthExceptions(
          signInWithEmailAndPassword: FirebaseAuthException(
            code: userNotFoundCode,
          ),
        ),
      );
      repository = AuthRepository(auth: mockAuth);
      final result = repository.loginWithPassword(
        email: tEmail,
        password: tPassword,
      );
      expect(() => result, throwsA(isA<UserNotFoundException>()));
    });
  });

  group('logout from current account', () {
    test(
      'should return boolean true when successful',
      () async {
        mockAuth = MockFirebaseAuth(mockUser: mockUser);
        repository = AuthRepository(auth: mockAuth);
        final result = await repository.logout();
        expect(result, equals(true));
      },
    );
  });
}
