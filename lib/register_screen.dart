import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:flare_flutter/flare_actor.dart';
// import 'package:spotify_login_app/login_screen.dart';
// import 'package:flare_flutter/trim_path.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = NeumorphicTheme.currentTheme(context);
    return Scaffold(
      body: Container(
        color: theme.baseColor,
        height: deviceSize.height,
        width: deviceSize.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(150)),
                            depth: 6,
                            intensity: 0.7,
                            lightSource: LightSource.topLeft,
                            color: Colors.white),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? theme.baseColor
                                    : Colors.white,
                            backgroundImage:
                                AssetImage('assets/images/spotify.png'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Hero(
                        tag: 'spotify',
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            'Spotify',
                            style: TextStyle(
                              color: theme.accentColor,
                              fontSize: 38,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(150)),
                        depth: -15,
                        intensity: 1,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: theme.baseColor,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 25, bottom: 11, top: 11, right: 15),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: theme.defaultTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(150)),
                        depth: -15,
                        intensity: 1,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: theme.baseColor,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 25, bottom: 11, top: 11, right: 15),
                        hintText: 'Full Name',
                        hintStyle: TextStyle(
                          color: theme.defaultTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(150)),
                        depth: -15,
                        intensity: 1,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: theme.baseColor,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 25, bottom: 11, top: 11, right: 15),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: theme.defaultTextColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date Of Birth :',
                          style: TextStyle(
                            color: theme.accentColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 32,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(150)),
                                depth: -15,
                                intensity: 1,
                                lightSource: LightSource.topLeft,
                                color: Colors.white),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: theme.baseColor,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                hintText: 'DD / MM / YYYY',
                                hintStyle: TextStyle(
                                  color: theme.defaultTextColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            NeumorphicCheckbox(
                              style: NeumorphicCheckboxStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              duration: Duration(milliseconds: 300),
                              value: _isMale,
                              onChanged: (value) {
                                setState(() {
                                  _isMale = value;
                                  if (_isMale == true) {
                                    _isFemale = false;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: theme.accentColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            NeumorphicCheckbox(
                              style: NeumorphicCheckboxStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              duration: Duration(milliseconds: 300),
                              value: _isFemale,
                              onChanged: (value) {
                                setState(() {
                                  _isFemale = value;
                                  if (_isFemale == true) {
                                    _isMale = false;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: theme.accentColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NeumorphicButton(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40)),
                      depth: 15,
                      intensity: 0.7,
                      lightSource: LightSource.topLeft,
                      // color: theme.accentColor,
                      color: Color(0xFF1ED760),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          // NeumorphicTheme.isUsingDark(context)
                          //     ? Colors.grey
                          //     : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Sign Up With',
                      style: TextStyle(
                        color: theme.defaultTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NeumorphicButton(
                          onPressed: () {},
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          padding: const EdgeInsets.all(14.0),
                          child: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: theme.accentColor,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        NeumorphicButton(
                          onPressed: () {
                            print("onClick");
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            FontAwesomeIcons.google,
                            color: theme.accentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: theme.defaultTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: theme.accentColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
