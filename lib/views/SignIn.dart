import 'package:flutter/material.dart';
import 'package:weebreader/constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 180),
          createTextField("Nome do usuario", false, Icons.person),
          SizedBox(height: 20),
          createTextField("Senha", true, Icons.vpn_key),
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {}, child: Text("Esqueci a minha senha")),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Acessar",
                style: TextStyle(color: Colors.white),
              ),
              color: kPrimaryColor,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(onPressed: () {}, child: Text("Criar uma conta")),
          ),
        ],
      ),
    );
  }

  Container createTextField(String hintText, bool obscure, IconData iconData) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextField(
        obscureText: obscure,
        style: TextStyle(
          color: kPrimaryColor,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(iconData),
          hintText: hintText,
          hintStyle: TextStyle(
            color: kTextColor.withOpacity(.5),
          ),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kTextColor)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)),
        ),
      ),
    );
  }
}
