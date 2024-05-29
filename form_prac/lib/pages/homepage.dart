import 'package:flutter/material.dart';
import 'package:form_prac/extensions/extensions.dart';
import 'package:form_prac/widgets/custom_form_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  String? email, password, phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(
          10.0,
        ),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomFormField(
                  hintText: 'Email',
                  validator: (val) {
                    if (!val!.isValidEmail) {
                      return "Enter a valid Email";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                CustomFormField(
                  hintText: 'Phone Number',
                  validator: (val) {
                    if (!val!.isValidPhone) {
                      return "Enter a valid PhoneNumber";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      phone = val;
                    });
                  },
                ),
                CustomFormField(
                  hintText: 'Password',
                  obscureText: true,
                  validator: (val) {
                    if (!val!.isValidPassword) {
                      return "Enter a valid Password";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Form Data Validated & Saved");
                      print("$email , $password , $phone");
                    }
                  },
                  child: const Text('Register'),
                ),
              ],
            )),
      ),
    );
  }
}
