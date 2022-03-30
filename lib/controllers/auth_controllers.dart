import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _firebaseStore = FirebaseFirestore.instance;
// save login data
  Stream<User?> get authChanger => _auth.authStateChanges();
// save login data

  signinWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          //we want to save the users data in firebase firestore
          _firebaseStore.collection('users').doc(user.uid).set({
            'username': user.displayName,
            'uid': user.uid,
            'userImage': user.photoURL,
          });
        } else {}
      }
    } catch (e) {}
  }
}
