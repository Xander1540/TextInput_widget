import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Text Input'),
      ),
      body: Center(
          child: Container(
              width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Username',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.teal.shade200,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.teal.shade800,
                    )
                  ),
                    //suffixText: 'Username',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.accessibility, color: Colors.red,),
                      onPressed: (){
                        print('username icon pressed');
                      },
                    )
                ),
              ),
              Container(height: 10),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText:  'Password',
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                color: Colors.teal.shade200,
                  width: 2,
              )
            ),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
            color: Colors.teal.shade800,
            )
            ),
                    //suffixText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.password, color: Colors.red),
                    onPressed: (){
                      print('password icon pressed');
                    },
                  )
              )
              ),
              ElevatedButton(
                  onPressed: (){
                String uemail = email.text.toString();
                String pass = password.text;
                print('Email: $uemail,   Password: $pass');
              }, child: Text('Login'))
            ],
          ))),
    );
  }
}
