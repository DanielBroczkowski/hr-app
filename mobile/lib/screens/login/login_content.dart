import 'package:flutter/material.dart';
import 'package:mobile/enums/login_state.dart';
import 'package:mobile/screens/login/widgets/login_holder.dart';
import 'package:mobile/screens/login/widgets/register_holder.dart';

class LoginContent extends StatefulWidget {
  @override
  _LoginContentState createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  LoginState _loginState = LoginState.LOGIN;


  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      LoginHolder(
                        changeLoginContentStateToRegister: changeLoginContentState,
                        isVisible: (_loginState == LoginState.LOGIN),
                      ),
                      RegisterHolder(
                        changeLoginContentStateToLogin: changeLoginContentState,
                        isVisible: _loginState == LoginState.REGISTER,
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeLoginContentState(LoginState _state){
    setState(() {
      _loginState = _state;
    });
  }

}
