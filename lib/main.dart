import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './providers/data_provider.dart';
import './screens/dashbord_screen.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CoronaProvider()
        ),

        ChangeNotifierProvider(
          create: (_) => AnyCountryProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'COVID19 summary',
        theme: ThemeData(
          primarySwatch: Colors.indigo
        ),
        home: DashbordScreen(),

        routes: {
          DashbordScreen.routeName: (_) => DashbordScreen()
        },
      ),
    );
  }
}


