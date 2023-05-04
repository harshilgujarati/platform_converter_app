import 'package:contact_diary/controller/providers/sign_up_provider.dart';
import 'package:contact_diary/utils/attributes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/sing_up_vector.gif',
                scale: 1.9,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onSaved: (val){
                    name = val;
                  },
                  validator: (v) {
                    if(v!.isEmpty) {
                      return "Please Enter Name";
                    }else {
                      return null;
                    }
                  },
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onSaved: (val){
                    email = val;
                  },
                  validator: (v) {
                    if(v!.isEmpty) {
                      return "Please Enter Email";
                    }else {
                      return null;
                    }
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onSaved: (val){
                    password = val;
                  },
                  validator: (v) {
                    if(v!.isEmpty) {
                      return "Please Enter Password";
                    }else {
                      return null;
                    }
                  },
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    Provider.of<sing_up_provider>(context,listen: false).m1security();

                    print(Provider.of<sing_up_provider>(context,listen: false).m1.email);
                    print(Provider.of<sing_up_provider>(context,listen: false).m1.password);

                    _nameController.clear();
                    _emailController.clear();
                    _passwordController.clear();

                    Navigator.of(context).pushReplacementNamed('LoginPage');
                  }
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  primary: Colors.deepPurpleAccent.shade100,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print(Provider.of<sing_up_provider>(context,listen: false).m1.email);
                    print(Provider.of<sing_up_provider>(context,listen: false).m1.password);
                    Navigator.of(context).pushReplacementNamed('LoginPage');
                  },
                  child: Text("Login?",style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
