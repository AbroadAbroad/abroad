  import 'package:abroad/src/features/authentication/screens/home/home_screen.dart';
  import 'package:abroad/src/features/authentication/screens/profile/profile_screen.dart';
  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:get/get.dart';
  import '../../src/features/authentication/screens/welcome/welcome_screen.dart';
  import 'exceptions/login_email_password_failure.dart';
  import 'exceptions/signup_email_password_failure.dart';


  class AuthenticationRepository extends GetxController {
    static AuthenticationRepository get instance => Get.find();


    //Variables
    final _auth = FirebaseAuth.instance;
    late final Rx<User?> firebaseUser;


    //Will be load when app launches this func will be called and set the firebaseUser state
    @override
    void onReady() {
      firebaseUser = Rx<User?>(_auth.currentUser);
      firebaseUser.bindStream(_auth.userChanges());
      ever(firebaseUser, _setInitialScreen);
    }


    /// If we are setting initial screen from here
    /// then in the main.dart => App() add CircularProgressIndicator()
    _setInitialScreen(User? user) {
      user == null ? Get.offAll(() => const WelcomeScreen()) : Get.offAll(() => const HomeScreen());
    }


    //FUNC
    Future<String?> createUserWithEmailAndPassword(String email, String password) async {
      try {
        await _auth.createUserWithEmailAndPassword(email: email, password: password);
        firebaseUser.value != null ? Get.offAll(() => const HomeScreen()) : Get.to(() => const WelcomeScreen());
      } on FirebaseAuthException catch (e) {
        final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
        return ex.message;
      } catch (_) {
        const ex = SignUpWithEmailAndPasswordFailure();
        return ex.message;
      }
      return null;
    }


  Future<String?> loginWithEmailAndPassword(String email, String password) async {
     try {
       await _auth.signInWithEmailAndPassword(email: email, password: password);
       firebaseUser.value != null ? Get.offAll(() => const HomeScreen()) : Get.to(() => const WelcomeScreen());
     } on FirebaseAuthException catch (e) {
       final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
       return ex.message;
     } catch (_) {
       const ex = LogInWithEmailAndPasswordFailure();
       return ex.message;
     }
     return null;
   }


    Future<void> logout() async => await _auth.signOut();
  }