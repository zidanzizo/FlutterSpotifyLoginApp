import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flare_flutter/flare_actor.dart';
// import 'package:flare_flutter/trim_path.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _currentAnimationName = "switch_day";

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = NeumorphicTheme.currentTheme(context);
    return Scaffold(
      body: Container(
        color: theme.baseColor,
        height: deviceSize.height,
        width: deviceSize.width,
        child: Stack(
          children: [
            Positioned(
              right: 20,
              top: 60,
              child: Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(
                  child: FlareActor(
                    "assets/button.flr",
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: _currentAnimationName,
                  ),
                  onTap: () {
                    print('object');
                    setState(() {
                      if (_currentAnimationName == "switch_day")
                        _currentAnimationName = "switch_night";
                      else
                        _currentAnimationName = "switch_day";
                      NeumorphicTheme.of(context).themeMode =
                          NeumorphicTheme.isUsingDark(context)
                              ? ThemeMode.light
                              : ThemeMode.dark;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SafeArea(
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
                            height: 100,
                            width: 100,
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
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Spotify',
                          style: TextStyle(
                            color: theme.accentColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
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
                            hintText: 'Username',
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
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: theme.defaultTextColor,
                                fontSize: 15,
                                letterSpacing: -0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
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
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              // NeumorphicTheme.isUsingDark(context)
                              //     ? Colors.grey
                              //     : Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          if (_currentAnimationName == "switch_day")
                            _currentAnimationName = "switch_night";
                          else
                            _currentAnimationName = "switch_day";
                          NeumorphicTheme.of(context).themeMode =
                              NeumorphicTheme.isUsingDark(context)
                                  ? ThemeMode.light
                                  : ThemeMode.dark;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'Be Correct With',
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
                              onPressed: () {
                                print("onClick");
                              },
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
                            'Don\'t have an account?',
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
                            onTap: () {},
                            child: Text(
                              'Sign Up',
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
          ],
        ),
      ),
    );
  }
}
