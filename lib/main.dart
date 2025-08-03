import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
  runApp(const MyApp());
  // });
}

var configColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
var configDarkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: configDarkColorScheme,
        scaffoldBackgroundColor: configDarkColorScheme.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: configDarkColorScheme.onPrimaryContainer,
            foregroundColor: configDarkColorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: configDarkColorScheme.onPrimaryContainer,
          foregroundColor: configDarkColorScheme.onPrimary,
          elevation: 0,
          centerTitle: false,
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: configDarkColorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        cardTheme: CardThemeData(
          color: configDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: configColorScheme,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: configColorScheme.onPrimaryContainer,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: configColorScheme.onPrimaryContainer,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: configColorScheme.onPrimaryContainer,
            fontSize: 16,
          ),
        ),
        cardTheme: CardThemeData(
          color: configColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    );
  }
}
