import 'package:firebase_auth/firebase_auth.dart'; //flutter_firebase_auth:any in dependencies

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn(String email, String password) async{
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch(e) {
      return e.message();
    }
  }

  Future<String> signUp({String email, String password}) async{
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch(e) {
      return e.message();
    }

  }

}