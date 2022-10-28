import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
          
          Container(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText:'Email' 
              )
            )
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText:'Password' 
              )
            )
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              child: const Text("Login"),
              onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Login Success!"),
                ))
              },
              )
            ),
        ],
      ));
  }
}
