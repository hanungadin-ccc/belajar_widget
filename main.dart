import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myhomepage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), 
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Allah Maha Benar'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.blibli.com/friends-backend/wp-content/uploads/2024/03/B111533-1-Fakta-Unik-Bunga-Sakura-1024x538.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // isi hlman
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Flutter!!!!!!!!',
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white70, 
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white70, 
                  ),
                  
                ),
                SizedBox(height: 25),
                Text(
                  'forgot pw?',
                  style: TextStyle(color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}