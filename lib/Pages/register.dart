import 'package:flutter/material.dart';
import 'package:flutter_service/Pages/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _passwordVisible = true;
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              //ignore: prefer_const_constructors
              image: AssetImage("assets/bglogin.jpeg"),
              fit: BoxFit.cover)),

      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
              ),
              Text("Register",
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xffA67458),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      labelText: 'first Name',
                      hintText: 'Enter Your first Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "* Required";
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xffA67458),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      labelText: 'last Name',
                      hintText: 'Enter Your last Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "* Required";
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xffA67458),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      labelText: 'Phone',
                      hintText: 'Enter Your phone Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "* Required";
                      } else if (value.length < 10) {
                        return "Password should be atleast 10 characters";
                      } else if (value.length > 10) {
                        return "Password should not be greater than 10 characters";
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xffA67458),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      labelText: 'Email',
                      hintText: 'Enter Your Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* Required";
                    } else if (!value.contains('@') || !value.contains('.')) {
                      return "Enter a Valid Email";
                    } else
                      return null;
                  },
                ),
              ),
              // ignore: prefer_const_constructors

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: !_passwordVisible,
                  controller: _pass,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true, //<-- SEE HERE
                      fillColor: Color(0xffA67458),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      labelText: 'Password',
                      hintText: 'Enter Your Passwird',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* Required";
                    } else if (value.length < 6) {
                      return "Password should be atleast 6 characters";
                    } else if (value.length > 15) {
                      return "Password should not be greater than 15 characters";
                    } else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    obscureText: !_passwordVisible,

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xffA67458),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        labelText: 'Confirm Password',
                        hintText: 'Confirm Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        )),
                    validator: (val) {
                      if (val!.isEmpty) return 'Empty';
                      if (val != _pass.text) return 'Not Match';
                      return null;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true, //<-- SEE HERE
                        fillColor: Color(0xffA67458),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        labelText: 'Address',
                        hintText: 'Enter Your Address',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )),
                    validator: (val) {
                      return null;
                    }),
              ),

              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    print("Validated");
                  } else {
                    print("Not Validated");
                  }
                },
                child: Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xff3E848C),
                      borderRadius: BorderRadius.circular(30)),
                  // ignore: prefer_const_constructors
                  child: Center(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "REGISTER",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You Have account ?",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Color(0xff7AB8BF)),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
