import 'package:flutter/material.dart';
import 'package:tryapp2/Pages/Home_Page.dart';
import 'package:tryapp2/Pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryapp2/utils/routes.dart';
import 'package:tryapp2/widgets/themes.dart';


void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lighttheme(context),
      //   theme: ThemeData(
      //   primarySwatch: Colors.yellow,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //     appBarTheme: AppBarTheme(
      //       color: Colors.white,
      //       elevation: 0.0,
      //     ),
      //
      // ),
      //theme: ThemeData.Light(),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/" : (context) => LoginPage(),
        //"/Home" : (context) => HomePage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
        //"/Login" : (context) => LoginPage()
    }
    );
  }
}
