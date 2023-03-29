import 'package:abroad/repository/authentication_repository/authentication_repository.dart';
import 'package:abroad/src/features/authentication/screens/home/home_screen.dart';
import 'package:abroad/src/features/authentication/screens/login/login_screen.dart';
import 'package:abroad/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:abroad/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:abroad/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:abroad/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: WelcomeScreen(),
    );
  }
}