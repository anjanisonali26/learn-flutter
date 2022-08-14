part of 'pages.dart';

class WelcomePages extends StatelessWidget {
  const WelcomePages({Key? key}) : super(key: key);

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
              "Anjani Apps",
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
                                                  onTap: () {
                                                    // KETIKA ICON DITEKAN
                                                  },
                                                  child: Icon(Icons
                                                      .visibility_outlined),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),

                                          // BUTTON SUBMIT LOGIN
                                          RaisedButton(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: defaultMargin),
                                            color: Colors.red, // background
                                            textColor:
                                                Colors.white, // foreground
                                            onPressed: () {},
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
                                                  onTap: () {
                                                    // KETIKA ICON DITEKAN
                                                  },
                                                  child: Icon(Icons
                                                      .visibility_outlined),
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
                                              hintText: 'Phone',
                                              labelText: 'Phone',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 28,
                                          ),
                                          // BUTTON SUBMIT LOGIN
                                          RaisedButton(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: defaultMargin),
                                            color: Colors.red, // background
                                            textColor:
                                                Colors.white, // foreground
                                            onPressed: () {},
                                            child: Text('Create Account'),
                                          ),

                                          SizedBox(
                                            height: 50,
                                          )
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
}
