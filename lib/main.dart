import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/TSS_school.dart';
import 'View/school_log.dart';
import 'View/teacher_Change.dart';
import 'View/teacher_Login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: thornhill_inf(),
      routes: {
        '/school_log': (context) => const loginApp12(),
        '/TSS_school': (context) => const thornhill_inf(),
        '/teachersAuth': (context) => const TeacherLoginAUth(),
        '/changeAuthAnnouncement': (context) => const ChangeDatabase(),
      }
    )
  );
}

