import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reservas_canchas_nolatech/data/models/local/reserve/reserve.dart';
import 'package:reservas_canchas_nolatech/data/repositories/court_respository_impl.dart';
import 'package:reservas_canchas_nolatech/presentation/screens/reserves_list.dart';
import 'package:sizer/sizer.dart';

_registerAdapters() {
  Hive.registerAdapter(ReserveAdapter());
}

_openBoxes() async {
  await Hive.openBox<Reserve>('reserve');
}

_initDependencies() {
  GetIt.I.registerLazySingleton(() => ReserveRepository());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  _registerAdapters();
  _openBoxes();
  _initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ReserveListScreen(),
      );
    });
  }
}
