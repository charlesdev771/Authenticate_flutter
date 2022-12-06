import 'package:authenticate/home_page.dart';
import 'package:authenticate/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BemVindoPage extends StatefulWidget {
  
  const BemVindoPage({super.key});


  
  @override 
  State<BemVindoPage> createState() => _BemVindoPageState();
}

class _BemVindoPageState extends State<BemVindoPage>{
  
  

  @override

  initState()
  {
    super.initState();
    VerificarUsuario().then((temUsuario){
      if (temUsuario)
      {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(), ), );
        // Old         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage(), ), (route) => false);

      }
      else{
                Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );

      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Text("Welcome"),
      ),
    );
  }

Future<bool> VerificarUsuario() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  String? token  = _sharedPreferences.getString('token');

  if (token == null)
  {
    return false;
  }
  else return true;
  {

  }
}

}