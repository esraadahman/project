import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future signInWithEmailAndPassword(String email, String pass) async {
    try { 
      await auth.signInWithEmailAndPassword(email: email, password: pass);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future signUpWithEmailAndPassword(String email, String pass) async {
    try {
     
      await auth.createUserWithEmailAndPassword(email: email, password: pass);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//
  static Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  static SignOut() async {
    await auth.signOut();
  }

//
//
//
//
//
}
