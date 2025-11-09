import 'package:flutter/material.dart';

void main() {
  runApp(const MyThemedApp());
}

class MyThemedApp extends StatelessWidget {
  const MyThemedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tema Global Flutter',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.teal[50],
        fontFamily: 'Stacksansheadline',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ),
      home: const ThemeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ThemeHomePage extends StatelessWidget {
  const ThemeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tema Global'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo selamat datang!',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            Text(
              'Aplikasi ini pakai tema global dan custom font.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Ini tombol tema!')),
                );
              },
              child: const Text('Coba Click!'),
            ),
          ],
        ),
      ),
    );
  }
}
