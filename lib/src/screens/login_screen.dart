import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            buildEmailField(),
            SizedBox(height: 16),
            buildPasswordField(),
            SizedBox(height: 16),
            buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget buildEmailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Your email",
          hintText: "Your email address",
          border: OutlineInputBorder()
      ),
    );
  }

  Widget buildPasswordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Your password",
          hintText: "password",
          border: OutlineInputBorder()
      ),
    );
  }

  buildSubmitButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
          primary: Colors.blueAccent,
        ),
          onPressed: () {},
          child: Text("Submit Button"),
      ),
    );
  }
}
