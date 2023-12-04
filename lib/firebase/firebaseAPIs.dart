//with firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../presentation/StateManager.dart';


class FirebaseApis {
  //google signIn
  signInWithGoogleFirebase() async {
    // loadingAnimation(context);
    try{
      await FirebaseAuth.instance.signOut();

      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      print("NowUser");
      print(gUser);
      if(gUser != null){
        //obtain auth details from request
        final GoogleSignInAuthentication gAuth = await gUser!.authentication;

        //obtain auth credentials for user
        final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );

        return await FirebaseAuth.instance.signInWithCredential(credential);

      }else{
        // Navigator.pop(context);
        // genericErrorMessage(context, "User Already Signed in");
      }
    }catch (e){
      // genericErrorMessage(context, e.toString());
    }
  }

  //Push notification
  Future<void> initNotification() async{
    final firebaseMessaging = FirebaseMessaging.instance;
    //request permission
    await firebaseMessaging.requestPermission();

    //fetch the FCM token for this device
    final fCMToken =await firebaseMessaging.getToken();
    print("Token:$fCMToken");
    //
  }

}
