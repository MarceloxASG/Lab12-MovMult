import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaterialLoginScreen()),
                );
              },
              child: const Text('Login with Material'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => const CupertinoLoginScreen()),
                );
              },
              child: const Text('Login with Cupertino'),
            ),
          ],
        ),
      ),
    );
  }
}

class MaterialLoginScreen extends StatelessWidget {
  const MaterialLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/mc.png'),
                width: 200,
                height: 200, 
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoLoginScreen extends StatelessWidget {
  const CupertinoLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Login'),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/KFC.png'),
                width: 200,
                height: 200, 
              ),
              SizedBox(
                width: 300,
                child: CupertinoTextField(
                  placeholder: 'Username',
                  padding: const EdgeInsets.all(16.0),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: CupertinoTextField(
                  placeholder: 'Password',
                  padding: const EdgeInsets.all(16.0),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: CupertinoButton.filled(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlatformSpecificLoginScreen extends StatelessWidget {
  const PlatformSpecificLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isAndroid) {
      return const MaterialLoginScreen();
    } else if (UniversalPlatform.isIOS) {
      return const CupertinoLoginScreen();
    } else {
      return Scaffold(
        body: Center(
          child: Text(
            'Pataforma no soportada',
          ),
        ),
      );
    }
  }
}
