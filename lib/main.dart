//KASI APP DEMO FOR SPAZA SHOPS IN SA
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child:Text('KASI APP'),
            ),
        backgroundColor: Colors.blueGrey,),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //To be configured when databases are connected
                //forgot password screen
              },
              child: const Text('Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: FlatButton(
                  child: const Text('Login'),
                  onPressed: () {
                    //To navigate through pages
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FirstPage();
                    }));  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Not yet registered?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
class FirstPage extends StatelessWidget {
 // final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('KASI APP')),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
              horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    }));
                  },
                  child: const Text('Capture Data',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            )
        ),
      ),
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ThirdPage();
                    }));
                  },
                  child: const Text('Generate Reports',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
    ],
      ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('KASI APP'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        Card(
        margin:EdgeInsets.symmetric(vertical: 10.0,
            horizontal: 30.0),
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ThirdPage();
              }));
            },
            child: const Text('Product-In',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            )
        ),
      ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 30.0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ThirdPage();
                      }));
                    },
                    child: const Text('Product-Out',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                ),
              ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 30.0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FourthPage();
                      }));
                    },
                    child: const Text('Debtors',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                ),
              ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 30.0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FourthPage();
                      }));
                    },
                    child: const Text('Creditors',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                ),
              ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 30.0),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FourthPage();
                      }));
                    },
                    child: const Text('Expenses',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    )
                ),
              ),
        ],
      ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('KASI APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FourthPage();
                    }));
                  },
                  child: const Text('Daily',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FourthPage();
                    }));
                  },
                  child: const Text('Weekly',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FourthPage();
                    }));
                  },
                  child: const Text('Yearly',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
            Card(
              margin:EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FourthPage();
                    }));
                  },
                  child: const Text('Intergrated',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('KASI APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,
                  horizontal: 30.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return ThirdPage();
                    }));
                  },
                  child: const Text('TO DATABASE',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}