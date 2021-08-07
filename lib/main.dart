import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato'
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _visibility  = false;
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;
    if(Width > 900){
      return Scaffold(
        body: Row(
          children: [
            Container(
              height: Height,
              width: Width/2,
              padding: EdgeInsets.fromLTRB(((Width/2-340)/2), Height*0.05, ((Width/2-340)/2), Height*0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: Height*0.05,
                      width: Width*0.2,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(height: Height*0.06,),
                  Row(
                    children: [
                      Text('Email',),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: TextField(
                      autocorrect: true,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        hintText: 'email@email.com'
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Password',),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: TextField(
                      autocorrect: true,
                      obscureText: _visibility,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _visibility = !_visibility;
                            });
                          }, 
                          icon: _visibility ? Icon(Icons.visibility): Icon(Icons.visibility_off)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.black,
                        side: BorderSide(
                          width: 12
                        ),
                        value: true, 
                        onChanged: (value){}
                      ),
                      SizedBox(width: 4,),
                      Text('Remember me'),
                      Expanded(child: SizedBox(width: Width/100,)),
                      InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline
                          ),
                        ),
                        onTap: (){

                        },
                      ),
                    ],
                  ),
                  SizedBox(height: Height*0.08,),
                  Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                  SizedBox(height: Height*0.08,),
                  Row(
                    children: [
                      Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(right: 15.0),
                          child: Divider(
                            color: Colors.black,
                            height: 20,
                          )
                        ),
                      ),
                      Text("or"),
                      Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(left: 15.0,),
                          child: Divider(
                            color: Colors.black,
                            height: 20,
                          )
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height: Height*0.04,),
                  Wrap(
                    spacing: Width*0.04,
                    children: [
                      IconButton(
                        onPressed: (){

                        }, 
                        icon: Icon(AntIcons.qrcode),
                        color: Colors.black26,
                      ),
                      IconButton(
                        onPressed: (){

                        }, 
                        icon: Icon(AntIcons.google),
                        color: Colors.black26,
                      ),
                      IconButton(
                        onPressed: (){

                        }, 
                        icon: Icon(AntIcons.apple),
                        color: Colors.black26,
                      ),
                    ],
                  ),
                  SizedBox(height: Height*0.04,),
                  Text("By continuting you are agreeing to our"),
                  SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Text(
                          'Term of service',
                          style: TextStyle(
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      Text(' and '),
                      InkWell(
                        child: Text(
                          'Privacy polict',
                          style: TextStyle(
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Height*0.05,),
                  Text('Powered by Nicetynine')
                ],
              ),
            ),
            Container(
              height: Height,
              width: Width/2,
              color: Colors.amber,
            )
          ],
        ),
      );
    }
    else if(Width >= 650 && Width <= 900){
      return Scaffold(
        body: Container(
          height: Height,
          width: Width,
          color: Colors.amber,
          child: Container(
            child: Center(
              child: Container(
                width: 560,
                height: 721,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 118, right: 118,top: Height*0.08,bottom: Height*0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: Height*0.05,
                          width: Width*0.2,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(height: Height*0.02,),
                      Row(
                        children: [
                          Text('Email',),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: 340,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: TextField(
                          autocorrect: true,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            hintText: 'email@email.com'
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Password',),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: 340,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: TextField(
                          autocorrect: true,
                          obscureText: _visibility,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _visibility = !_visibility;
                                });
                              }, 
                              icon: _visibility ? Icon(Icons.visibility): Icon(Icons.visibility_off)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.black,
                            side: BorderSide(
                              width: 12
                            ),
                            value: true, 
                            onChanged: (value){}
                          ),
                          SizedBox(width: 4,),
                          Text('Remember me'),
                          Expanded(child: SizedBox(width: Width/100,)),
                          InkWell(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline
                              ),
                            ),
                            onTap: (){
                            
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: Height*0.04,),
                      Container(
                        width: 340,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: FlatButton(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: (){
                          
                          },
                        ),
                      ),
                      SizedBox(height: Height*0.04,),
                      Row(
                        children: [
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(right: 15.0),
                              child: Divider(
                                color: Colors.black,
                                height: 20,
                              )
                            ),
                          ),
                          Text("or"),
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(left: 15.0,),
                              child: Divider(
                                color: Colors.black,
                                height: 20,
                              )
                            ),
                          ),
                        ]
                      ),
                      SizedBox(height: Height*0.02,),
                      Wrap(
                        spacing: Width*0.04,
                        children: [
                          IconButton(
                            onPressed: (){
                            
                            }, 
                            icon: Icon(AntIcons.qrcode),
                            color: Colors.black26,
                          ),
                          IconButton(
                            onPressed: (){
                            
                            }, 
                            icon: Icon(AntIcons.google),
                            color: Colors.black26,
                          ),
                          IconButton(
                            onPressed: (){
                            
                            }, 
                            icon: Icon(AntIcons.apple),
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      SizedBox(height: Height*0.03,),
                      Text("By continuting you are agreeing to our"),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text(
                              'Term of service',
                              style: TextStyle(
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          Text(' and '),
                          InkWell(
                            child: Text(
                              'Privacy polict',
                              style: TextStyle(
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Height*0.05,),
                      Text('Powered by Nicetynine')
                    ],
                  ),
                )
              ),
            ),
          ),
        ),
      );
    }
    else{
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: (Width-340)/2, right: (Width-340)/2,top: Height*0.08,bottom: Height*0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: Height*0.05,
                  width: Width*0.6,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: Height*0.1,),
              Row(
                children: [
                  Text('Email',),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: TextField(
                  autocorrect: true,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: 'email@email.com'
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Password',),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: TextField(
                  autocorrect: true,
                  obscureText: _visibility,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _visibility = !_visibility;
                        });
                      }, 
                      icon: _visibility ? Icon(Icons.visibility): Icon(Icons.visibility_off)
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    side: BorderSide(
                      width: 12
                    ),
                    value: true, 
                    onChanged: (value){}
                  ),
                  SizedBox(width: 4,),
                  Text('Remember me'),
                  Expanded(child: SizedBox(width: Width/100,)),
                  InkWell(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        decoration: TextDecoration.underline
                      ),
                    ),
                    onTap: (){
                    
                    },
                  ),
                ],
              ),
              SizedBox(height: Height*0.04,),
              Container(
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                  
                  },
                ),
              ),
              SizedBox(height: Height*0.04,),
              Row(
                children: [
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      )
                    ),
                  ),
                  Text("or"),
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 15.0,),
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      )
                    ),
                  ),
                ]
              ),
              SizedBox(height: Height*0.02,),
              Wrap(
                spacing: Width*0.04,
                children: [
                  IconButton(
                    onPressed: (){
                    
                    }, 
                    icon: Icon(AntIcons.qrcode),
                    color: Colors.black26,
                  ),
                  IconButton(
                    onPressed: (){
                    
                    }, 
                    icon: Icon(AntIcons.google),
                    color: Colors.black26,
                  ),
                  IconButton(
                    onPressed: (){
                    
                    }, 
                    icon: Icon(AntIcons.apple),
                    color: Colors.black26,
                  ),
                ],
              ),
              SizedBox(height: Height*0.03,),
              Text("By continuting you are agreeing to our"),
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Text(
                      'Term of service',
                      style: TextStyle(
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                  Text(' and '),
                  InkWell(
                    child: Text(
                      'Privacy polict',
                      style: TextStyle(
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Height*0.1,),
              Text('Powered by Nicetynine')
            ],
          ),
        ),
      );
    }
  }
}