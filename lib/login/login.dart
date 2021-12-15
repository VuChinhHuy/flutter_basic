import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController numberPhoneContronler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: 200.w,
              decoration: BoxDecoration(
                color: Color.fromARGB(240, 49,11, 82),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(200.w))
              ),
            ),
            Positioned(
                left: 10.w,
                top: 70.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('What Is Your Phone',style: GoogleFonts.poppins(fontSize: 28.t,fontWeight: FontWeight.bold,color: Colors.white)),
                    Text('Number?',style: GoogleFonts.poppins(fontSize: 28.t,fontWeight: FontWeight.bold,color: Colors.white))
                  ],
                )
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.only(top: 250, left: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Please enter your phone number to verify your account',style: GoogleFonts.poppins(fontSize: 18.t,)),
                  SizedBox(height: 15,),
                  TextField(
                    controller: numberPhoneContronler,
                    decoration: InputDecoration(
                    hintText: 'Nhập số điện thoại của bạn',
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.red, width: 5)),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20.w),
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.amber,
                    height: 50.w,
                    minWidth: double.infinity,
                    textColor: Colors.white,
                    child: Text('Send Verifitaction Code',style: GoogleFonts.poppins(fontSize: 18.t,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20.w,),
                  Container(
                    height: 50.w,
                    width: 100.w,
                    child: OutlinedButton(
                      onPressed: (){}, child: Text('Skip',style: GoogleFonts.poppins(fontSize: 18.t,color: Color.fromARGB(240, 49,11, 82))),
                    ),

                  )
                ],
              ),
            )
          ],

        ),
      )
    );
  }
}
