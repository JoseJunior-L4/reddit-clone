import 'package:flutter/material.dart';
import 'package:weebreader/constants.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80),
            createTextField(
                "Nome do usuario", false, Icons.person, TextInputType.name),
            SizedBox(height: 10),
            createTextField("Senha", true, Icons.vpn_key, TextInputType.text),
            SizedBox(height: 10),
            createTextField(
                "Confirmar a senha", true, Icons.vpn_key, TextInputType.text),
            SizedBox(height: 10),
            createTextField(
                "Nr de celular", false, Icons.phone, TextInputType.phone),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Criar",
                  style: TextStyle(color: Colors.white),
                ),
                color: kPrimaryColor,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Ja tem uma conta? "),
              TextButton(onPressed: () {}, child: Text("Acesse a sua conta")),
            ]),
          ],
        ),
      ),
    );
  }
}

Container createTextField(
    String hintText, bool obscure, IconData iconData, TextInputType inputType) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: TextField(
      keyboardType: inputType,
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
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryColor)),
      ),
    ),
  );
}
