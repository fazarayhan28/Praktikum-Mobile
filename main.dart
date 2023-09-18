import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('UPN "Veteran" Yogyakarta'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.lock),
          ],
        ),

          body: Center(
              child: ListView(
                padding: EdgeInsets.all(40.0),
                children: [
                  Image.asset('assets/images/logo.png',
                  height: 200,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'What do people call you?',
                      labelText: 'Name *',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password *',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  ElevatedButton(
                    onPressed: (){}, // Respon ketika button ditekan
                    child: Text("Login"),
                  ),
                  TextButton(
                    onPressed: (){}, // Respon ketika button ditekan
                    child: Text("Lupa password?"),
                  ),
                ],
              ),
          ),
        ),
      );
  }
}
