import 'package:flutter/material.dart';
import 'package:demo_google_sign/screens/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  /// TODO: update Supabase credentials with your own
  await Supabase.initialize(
    url: 'https://nbcjhrspkctbjdzopobc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5iY2pocnNwa2N0Ympkem9wb2JjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTIwNjg2OTksImV4cCI6MjAwNzY0NDY5OX0.n_bnB-0ZCxoDBTnw8DI0S-uEEu605oQCdN0Tgwk3XlU',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
