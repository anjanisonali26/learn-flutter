part of 'pages.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  _WelcomePagesState createState() => _WelcomePagesState();
}

// Register and Login Page

class _WelcomePagesState extends State<WelcomePages> {
  bool _isHidden = true;
  bool _isHiddenFullname = true;
  bool _isHiddenPassword = true;
  bool _isHiddenPhone = true;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/loginBanner.png',
                height: 333, fit: BoxFit.fill),
            SizedBox(
              height: 40,
            ),
            Text(
              "Tsurvey Apps",
              style: dangerTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                "Welcome to the T-survey app. \nHere you will survey what you will survey",
                style: blackTextStyle.copyWith(fontSize: 15),
                textAlign: TextAlign.center),
            SizedBox(
              height: 51,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          return Wrap(
                            children: [
                              // BAGIAN MODAL
                              Container(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40))),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: defaultMargin),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // JARAK
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Login",
                                                    style: orangeTextStyle
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                    onTap: () {
                                                      // KETIKA ICON CLOSE DITEKAN
                                                      Navigator.pop(context);
                                                    },
                                                    child: Image.asset(
                                                      'assets/images/cancel.png',
                                                      height: 30,
                                                      width: 30,
                                                    )),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: dangerColor,
                                                      width: 2.0),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'Email',
                                                labelText: 'Email'),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            obscureText: _isHiddenPassword,
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: dangerColor,
                                                      width: 2.0),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'Password',
                                                labelText: 'Password',
                                                suffixIcon: InkWell(
                                                  onTap: _tooglePasswordView,
                                                  child: Icon(_isHiddenPassword
                                                      ? Icons.lock_outline
                                                      : Icons
                                                          .lock_open_outlined),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),

                                          Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFD7D7D7),
                                                    border: Border.all(
                                                        color: primaryColor,
                                                        width: 3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Checkbox(
                                                  value: _isChecked,
                                                  checkColor: Color(0xFFD7D7D7),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      this._isChecked = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Remember me",
                                                style: whiteTextStyle.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "Forgot Password?",
                                                style: whiteTextStyle.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),

                                          RaisedButton(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: defaultMargin),
                                            color: Color.fromARGB(
                                                255, 115, 11, 11), // background
                                            textColor:
                                                Colors.white, // foreground
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const DashboardPage()),
                                              );
                                            },
                                            child: Text('Log In'),
                                          ),

                                          SizedBox(
                                            height: 50,
                                          )
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          );
                        });
                      });
                },

                //Button di depan
                child: Text('Login',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: dangerColor, width: 3),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Wrap(
                              children: [
                                // BAGIAN MODAL
                                Container(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40))),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: defaultMargin),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // JARAK
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Register",
                                                    style: orangeTextStyle
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                  onTap: () {
                                                    // KETIKA ICON CLOSE DITEKAN
                                                    Navigator.pop(context);
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/cancel.png',
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: dangerColor,
                                                    width: 2.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: 'Fullname',
                                              labelText: 'Fullname',
                                            ),
                                          ),

                                          SizedBox(
                                            height: 28,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: dangerColor,
                                                    width: 2.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: 'Email',
                                              labelText: 'Email',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            obscureText: _isHiddenPassword,
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: dangerColor,
                                                      width: 2.0),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'Password',
                                                labelText: 'Password',
                                                suffixIcon: InkWell(
                                                  onTap: _tooglePasswordView,
                                                  child: Icon(_isHiddenPassword
                                                      ? Icons.lock_outline
                                                      : Icons
                                                          .lock_open_outlined),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: dangerColor,
                                                    width: 2.0),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hintText: 'Phone Number',
                                              labelText: 'Phone Number',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),

                                        
                                          SizedBox(
                                            height: 50,
                                          )

                                          // BUTTON SUBMIT LOGIN
                                          // Container(
                                          //   height: 60,
                                          //   width: MediaQuery.of(context)
                                          //           .size
                                          //           .width -
                                          //       2 * defaultMargin,
                                          //   child: ElevatedButton(
                                          //     onPressed: () {
                                          //       showModalBottomSheet(
                                          //           isScrollControlled: true,
                                          //           context: context,
                                          //           builder: (builder) {
                                          //             return StatefulBuilder(
                                          //                 builder: (BuildContext
                                          //                         context,
                                          //                     StateSetter
                                          //                         setState) {
                                          //               return Wrap(
                                          //                 children: [
                                          //                   // BAGIAN MODAL
                                          //                   Container(
                                          //                       color: Color
                                          //                           .fromARGB(
                                          //                               0,
                                          //                               189,
                                          //                               55,
                                          //                               55),
                                          //                       child:
                                          //                           Container(
                                          //                         decoration: BoxDecoration(
                                          //                             color:
                                          //                                 whiteColor,
                                          //                             borderRadius: BorderRadius.only(
                                          //                                 topRight: Radius.circular(
                                          //                                     40),
                                          //                                 topLeft:
                                          //                                     Radius.circular(40))),
                                          //                         child:
                                          //                             Container(
                                          //                           margin: EdgeInsets.symmetric(
                                          //                               horizontal:
                                          //                                   defaultMargin),
                                          //                           child:
                                          //                               Column(
                                          //                             crossAxisAlignment:
                                          //                                 CrossAxisAlignment
                                          //                                     .start,
                                          //                             children: [
                                          //                               // JARAK
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     25,
                                          //                               ),
                                          //                               Row(
                                          //                                 children: [
                                          //                                   Column(
                                          //                                     crossAxisAlignment: CrossAxisAlignment.start,
                                          //                                     children: [
                                          //                                       Text(
                                          //                                         "Register",
                                          //                                         style: orangeTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                                          //                                       )
                                          //                                     ],
                                          //                                   ),
                                          //                                   Spacer(),
                                          //                                   Center(
                                          //                                     child: InkWell(
                                          //                                         onTap: () {
                                          //                                           // KETIKA ICON CLOSE DITEKAN
                                          //                                           Navigator.pop(context);
                                          //                                         },
                                          //                                         child: Image.asset(
                                          //                                           'assets/images/cancel.png',
                                          //                                           height: 30,
                                          //                                           width: 30,
                                          //                                         )),
                                          //                                   )
                                          //                                 ],
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     25,
                                          //                               ),
                                          //                               TextField(
                                          //                                 decoration: InputDecoration(
                                          //                                     focusedBorder: OutlineInputBorder(
                                          //                                       borderSide: BorderSide(color: dangerColor, width: 2.0),
                                          //                                     ),
                                          //                                     border: OutlineInputBorder(
                                          //                                       borderRadius: BorderRadius.circular(10),
                                          //                                     ),
                                          //                                     hintText: 'Email',
                                          //                                     labelText: 'Email'),
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     28,
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     5,
                                          //                               ),
                                          //                               TextField(
                                          //                                 obscureText:
                                          //                                     _isHiddenPassword,
                                          //                                 decoration: InputDecoration(
                                          //                                     focusedBorder: OutlineInputBorder(
                                          //                                       borderSide: BorderSide(color: dangerColor, width: 2.0),
                                          //                                     ),
                                          //                                     border: OutlineInputBorder(
                                          //                                       borderRadius: BorderRadius.circular(10),
                                          //                                     ),
                                          //                                     hintText: 'Password',
                                          //                                     labelText: 'Password',
                                          //                                     suffixIcon: InkWell(
                                          //                                       onTap: _tooglePasswordView,
                                          //                                       child: Icon(_isHiddenPassword ? Icons.lock_outline : Icons.lock_open_outlined),
                                          //                                     )),
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     28,
                                          //                               ),

                                          //                               Row(
                                          //                                 children: [
                                          //                                   Container(
                                          //                                     width: 20,
                                          //                                     height: 20,
                                          //                                     decoration: BoxDecoration(color: Color(0xFFD7D7D7), border: Border.all(color: primaryColor, width: 3), borderRadius: BorderRadius.circular(5)),
                                          //                                     child: Checkbox(
                                          //                                       value: _isChecked,
                                          //                                       checkColor: Color(0xFFD7D7D7),
                                          //                                       onChanged: (value) {
                                          //                                         setState(() {
                                          //                                           this._isChecked = value!;
                                          //                                         });
                                          //                                       },
                                          //                                     ),
                                          //                                   ),
                                          //                                   SizedBox(
                                          //                                     width: 5,
                                          //                                   ),
                                          //                                   Text(
                                          //                                     "Remember me",
                                          //                                     style: whiteTextStyle.copyWith(
                                          //                                       color: primaryColor,
                                          //                                       fontSize: 12,
                                          //                                     ),
                                          //                                   ),
                                          //                                   Spacer(),
                                          //                                   Text(
                                          //                                     "Forgot Password?",
                                          //                                     style: whiteTextStyle.copyWith(
                                          //                                       color: primaryColor,
                                          //                                       fontSize: 12,
                                          //                                     ),
                                          //                                   )
                                          //                                 ],
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     28,
                                          //                               ),

                                          //                               // BUTTON SUBMIT LOGIN
                                          //                               Container(
                                          //                                 height:
                                          //                                     60,
                                          //                                 width:
                                          //                                     MediaQuery.of(context).size.width - 2 * defaultMargin,
                                          //                                 child:
                                          //                                     ElevatedButton(
                                          //                                   onPressed:
                                          //                                       () {
                                          //                                     showModalBottomSheet(
                                          //                                         isScrollControlled: true,
                                          //                                         context: context,
                                          //                                         builder: (builder) {
                                          //                                           return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
                                          //                                             return Wrap(
                                          //                                               children: [
                                          //                                                 // BAGIAN MODAL
                                          //                                                 Container(
                                          //                                                     color: Colors.transparent,
                                          //                                                     child: Container(
                                          //                                                       decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))),
                                          //                                                       child: Container(
                                          //                                                         margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                          //                                                         child: Column(
                                          //                                                           crossAxisAlignment: CrossAxisAlignment.start,
                                          //                                                           children: [
                                          //                                                             // JARAK
                                          //                                                             SizedBox(
                                          //                                                               height: 25,
                                          //                                                             ),
                                          //                                                             Row(
                                          //                                                               children: [
                                          //                                                                 Column(
                                          //                                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                          //                                                                   children: [
                                          //                                                                     //Text di modal
                                          //                                                                     Text(
                                          //                                                                       "Login",
                                          //                                                                       style: orangeTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
                                          //                                                                     )
                                          //                                                                   ],
                                          //                                                                 ),
                                          //                                                                 Spacer(),
                                          //                                                                 Center(
                                          //                                                                   child: InkWell(
                                          //                                                                       onTap: () {
                                          //                                                                         // KETIKA ICON CLOSE DITEKAN
                                          //                                                                         Navigator.pop(context);
                                          //                                                                       },
                                          //                                                                       child: Image.asset(
                                          //                                                                         'assets/images/cancel.png',
                                          //                                                                         height: 30,
                                          //                                                                         width: 30,
                                          //                                                                       )),
                                          //                                                                 )
                                          //                                                               ],
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 25,
                                          //                                                             ),
                                          //                                                             TextField(
                                          //                                                               decoration: InputDecoration(
                                          //                                                                   focusedBorder: OutlineInputBorder(
                                          //                                                                     borderSide: BorderSide(color: dangerColor, width: 2.0),
                                          //                                                                   ),
                                          //                                                                   border: OutlineInputBorder(
                                          //                                                                     borderRadius: BorderRadius.circular(10),
                                          //                                                                   ),
                                          //                                                                   hintText: 'Email',
                                          //                                                                   labelText: 'Email'),
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 28,
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 5,
                                          //                                                             ),
                                          //                                                             TextField(
                                          //                                                               obscureText: _isHiddenPassword,
                                          //                                                               decoration: InputDecoration(
                                          //                                                                   focusedBorder: OutlineInputBorder(
                                          //                                                                     borderSide: BorderSide(color: dangerColor, width: 2.0),
                                          //                                                                   ),
                                          //                                                                   border: OutlineInputBorder(
                                          //                                                                     borderRadius: BorderRadius.circular(10),
                                          //                                                                   ),
                                          //                                                                   hintText: 'Password',
                                          //                                                                   labelText: 'Password',
                                          //                                                                   suffixIcon: InkWell(
                                          //                                                                     onTap: _tooglePasswordView,
                                          //                                                                     child: Icon(_isHiddenPassword ? Icons.lock_outline : Icons.lock_open_outlined),
                                          //                                                                   )),
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 28,
                                          //                                                             ),

                                          //                                                             Row(
                                          //                                                               children: [
                                          //                                                                 Container(
                                          //                                                                   width: 20,
                                          //                                                                   height: 20,
                                          //                                                                   decoration: BoxDecoration(color: Color(0xFFD7D7D7), border: Border.all(color: primaryColor, width: 3), borderRadius: BorderRadius.circular(5)),
                                          //                                                                   child: Checkbox(
                                          //                                                                     value: _isChecked,
                                          //                                                                     checkColor: Color(0xFFD7D7D7),
                                          //                                                                     onChanged: (value) {
                                          //                                                                       setState(() {
                                          //                                                                         this._isChecked = value!;
                                          //                                                                       });
                                          //                                                                     },
                                          //                                                                   ),
                                          //                                                                 ),
                                          //                                                                 SizedBox(
                                          //                                                                   width: 5,
                                          //                                                                 ),
                                          //                                                                 Text(
                                          //                                                                   "Remember me",
                                          //                                                                   style: whiteTextStyle.copyWith(
                                          //                                                                     color: primaryColor,
                                          //                                                                     fontSize: 12,
                                          //                                                                   ),
                                          //                                                                 ),
                                          //                                                                 Spacer(),
                                          //                                                                 Text(
                                          //                                                                   "Forgot Password?",
                                          //                                                                   style: whiteTextStyle.copyWith(
                                          //                                                                     color: primaryColor,
                                          //                                                                     fontSize: 12,
                                          //                                                                   ),
                                          //                                                                 )
                                          //                                                               ],
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 28,
                                          //                                                             ),

                                          //                                                             // BUTTON SUBMIT LOGIN
                                          //                                                             RaisedButton(
                                          //                                                               padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                                          //                                                               color: Color.fromARGB(255, 160, 235, 12), // background
                                          //                                                               textColor: Colors.white, // foreground
                                          //                                                               onPressed: () {},
                                          //                                                               child: Text('Log In'),
                                          //                                                             ),
                                          //                                                             SizedBox(
                                          //                                                               height: 50,
                                          //                                                             )
                                          //                                                           ],
                                          //                                                         ),
                                          //                                                       ),
                                          //                                                     ))
                                          //                                               ],
                                          //                                             );
                                          //                                           });
                                          //                                         });
                                          //                                   },
                                          //                                   child: Text('Anjani',
                                          //                                       style: blackTextStyle.copyWith(
                                          //                                         fontSize: 20,
                                          //                                         fontWeight: FontWeight.w500,
                                          //                                       )),
                                          //                                   style:
                                          //                                       ElevatedButton.styleFrom(primary: whiteColor, shape: RoundedRectangleBorder(side: BorderSide(color: dangerColor, width: 3), borderRadius: BorderRadius.circular(15))),
                                          //                                 ),
                                          //                               ),
                                          //                               SizedBox(
                                          //                                 height:
                                          //                                     50,
                                          //                               )
                                          //                             ],
                                          //                           ),
                                          //                         ),
                                          //                       ))
                                          //                 ],
                                          //               );
                                          //             });
                                          //           });
                                          //     },
                                          //     //Button di modal register
                                          //     child: Text('haluuuu',
                                          //         style:
                                          //             whiteTextStyle.copyWith(
                                          //           fontSize: 20,
                                          //           fontWeight: FontWeight.w500,
                                          //         )),
                                          //     style: ElevatedButton.styleFrom(
                                          //         primary: dangerColor,
                                          //         shape: RoundedRectangleBorder(
                                          //             side: BorderSide(
                                          //                 color: dangerColor,
                                          //                 width: 3),
                                          //             borderRadius:
                                          //                 BorderRadius.circular(
                                          //                     15))),
                                          //   ),
                                          // ),

                                          // SizedBox(
                                          //   height: 50,
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                        });
                  },
                  child: Text('Create Account',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      )),
                  style: ElevatedButton.styleFrom(
                      primary: dangerColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ),
            SizedBox(height: 36),
            Text(
              'Anjani Sonali Bendre @2022',
              textAlign: TextAlign.center,
              style: yellowTextStyle.copyWith(color: yellowColor, fontSize: 11),
            ),
            SizedBox(height: defaultMargin)
          ],
        ),
      ),
    );
  }

  void _tooglePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  void _toogleFullnameView() {
    setState(() {
      _isHiddenFullname = !_isHiddenFullname;
    });
  }
}

// Dashboard Page
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/tsurvey.png',
            width: 100.0,
            height: 100.0,
          ),
          backgroundColor: Color.fromARGB(255, 206, 173, 173),
        ),
        backgroundColor: Colors.pink[50],
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 204, 59, 195),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 200, 121, 9),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 69, 222, 35),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  splashColor: Color.fromARGB(255, 43, 141, 211),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

// After Register

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/tsurvey.png',
          width: 100.0,
          height: 100.0,
        ),
        backgroundColor: Color.fromARGB(255, 206, 173, 173),
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/otp.png',
            width: 300.0,
            height: 300.0,
          ),
          Text('OTP Page'),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username',
              hintStyle: TextStyle(
                color: Color(0xFF262AAA),
              ),
              fillColor: Color(0xFF262AAA),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF262AAA), width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      )),
      backgroundColor: Colors.pink[50],
    );
  }
}
