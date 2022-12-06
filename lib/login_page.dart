import 'package:authenticate/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  final _crailcontroller = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formkey,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _crailcontroller,
              decoration: InputDecoration(
                label: Text("C-rail"), 
                hintText: 'nome@email.com'
                ),
              ),

            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                label: Text('Senha'),
                hintText: "sua senha",
              ),
            ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate())
                  {
                    logar(); 
                  }
                },
                child: Text('Login')
              ),
          ],
        ),
      )
      ),
    );
  }

  logar() async 
  {
    Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ), 
    );
  }


}