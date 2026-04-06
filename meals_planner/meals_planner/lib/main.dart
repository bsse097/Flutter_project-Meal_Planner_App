import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:meals/screens/tabs.dart';

// main.dart

final ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Color.fromARGB(255, 44, 41, 82),
    primary: const Color.fromARGB(255, 55, 71, 79),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 45, 42, 86),
    surface: Colors.blueGrey[50],
  ),
  scaffoldBackgroundColor: const Color(0xFFF5F7F8),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 40, 55, 63),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color.fromARGB(255, 40, 55, 63),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.blueGrey[200],
    type: BottomNavigationBarType.fixed,
  ),
  textTheme: GoogleFonts.ralewayTextTheme().copyWith(
    titleLarge: GoogleFonts.robotoCondensed(
      fontWeight: FontWeight.bold,
      color: Colors.blueGrey[900],
    ),
    bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
    bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
  ),

switchTheme: SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return const Color.fromARGB(255, 40, 55, 63); // ON
    }
    return Colors.grey; // OFF
  }),
  trackColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return const Color.fromARGB(255, 40, 55, 63).withOpacity(0.5);
    }
    return Colors.grey.withOpacity(0.3);
  }),
),

);
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
