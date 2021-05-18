import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BookWorm());
}

class BookWorm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/logo.jpeg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('A JOINT FOR ALL THE BIBILOPHILES',
                      style: GoogleFonts.merriweather(
                        color: Colors.white,
                        fontSize: 18,
                      ))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: createTextField(
                            Icon(
                              Icons.alternate_email_sharp,
                              color: Colors.grey,
                            ),
                            'Email')),
                    createTextField(
                        Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        'Password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?",
                            style: GoogleFonts.hind(
                                fontSize: 18, color: Colors.grey)),
                        TextButton(
                            onPressed: () => {print("click")},
                            child: Text("Register",
                                style: GoogleFonts.hind(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.white,
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.hind(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createTextField(Icon icon, String hintText) {
    return TextFormField(
        enableSuggestions: false,
        autocorrect: false,
        cursorHeight: 22,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.only(top: 15, bottom: 25),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
            ),
            prefixIcon: icon,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18)));
  }
}
