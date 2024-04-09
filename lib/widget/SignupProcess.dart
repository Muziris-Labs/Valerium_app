import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/widget/AlternativeGradbtn.dart';
import 'package:valerium_wallet/widget/Gradientbutton.dart';
import 'package:valerium_wallet/widget/TextToSignin.dart';
import 'package:valerium_wallet/widget/Textfield.dart';
import 'package:valerium_wallet/widget/connectHardware.dart';

class SignupProcess extends StatefulWidget {
  const SignupProcess({super.key});

  @override
  State<SignupProcess> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignupProcess> {
  ScrollController scrollCtr = ScrollController();
  TextEditingController _domainController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    scrollCtr.dispose();
    _domainController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      controller: scrollCtr,
      child: Container(
        width: screenWidth * 3,
        child: Stack(children: [
          Positioned(
            left: 160,
            top: 68,
            child: Container(
              height: 1,
              width: screenWidth * 3 -350,
              decoration:
                  BoxDecoration(color: const Color.fromRGBO(77, 74, 79, 1)),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      "Find your Favorite Multi Chain \nValerium Domain.",
                      style: GoogleFonts.notoSans(
                          color: Color.fromRGBO(158, 158, 158, 1),
                          height: 1.1,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Column(children: [
                      Image.asset(
                        "lib/images/icons/profile_step1.png",
                        scale: 1.2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Add domain",
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontSize: 12),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Valerium Domain",
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        SignupField(
                          text: 'noober@valerium',
                          controller: _domainController,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GradButton(
                          text: "Select Domain",
                          ontap: ToSecondPage,

                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ConnectHardwarebtn(),
                        SizedBox(
                          height: 16,
                        ),
                        ForwardLink()
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Text(
                      "Give your Password or Passkey to \nadd Authentication to your wallet.",
                      style: GoogleFonts.notoSans(
                          color: Color.fromRGBO(158, 158, 158, 1),
                          height: 1.2,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(children: [
                      Image.asset(
                        "lib/images/icons/profile_step2.png",
                        scale: 1.2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Add Auth",
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontSize: 12),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Password",
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        SignupField(
                          text: '*********',
                          controller: _PasswordController,
                          hide: true,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            AlternativeGradbtn(ontap: BackToFirst, text: "Back",),
                            SizedBox(width: 10,),
                            GradButton(
                              text: "Continue",
                              ontap: ToFinalPage,
                            
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ConnectHardwarebtn(),
                        SizedBox(
                          height: 16,
                        ),
                        ForwardLink()
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(
                width: 40,
              ),
               Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:45.0),
                    child: Text(
                      "Verify your Email to Deploy your wallet.\n",
                      style: GoogleFonts.notoSans(
                          color: Color.fromRGBO(158, 158, 158, 1),
                          height: 1.2,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Column(children: [
                      Image.asset(
                        "lib/images/icons/profile_step3.png",
                        scale: 1.2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Verify Email",
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontSize: 12),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Email address",
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        SignupField(
                          text: 'noober@valerium.com',
                          controller: _EmailController,
                     
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            AlternativeGradbtn(ontap: BackToSecond, text: "Back",),
                            SizedBox(width: 10,),
                            GradButton(
                              text: "Verify",
                              ontap: (){},
                            
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ConnectHardwarebtn(),
                        SizedBox(
                          height: 16,
                        ),
                        ForwardLink()
                      ],
                    ),
                  )
                ],
              ),
             
            ],
          ),
        ]),
      ),
    );
  }

  void ToSecondPage() {
    scrollCtr.animateTo(390, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void BackToSecond() {
    scrollCtr.animateTo(390, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void ToFinalPage() {
    scrollCtr.animateTo(780, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void BackToFirst(){
    scrollCtr.animateTo(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    
  }
}
