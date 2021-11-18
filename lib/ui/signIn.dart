part of 'ui.dart';

class SignIn extends StatefulWidget {
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bgon.png"), fit: BoxFit.cover)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .02,),
            Container(
              padding: EdgeInsets.all(size.width * .06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/img/logo2.png', height: size.height * .1,),
                  SizedBox(height: size.height * .05,),
                  Text("Welcome",
                      style: TextStyle(color: Colors.white, fontSize: size.width * .05)),
                  Text(
                    "Sign In to Continue",
                    style: TextStyle(color: Colors.white, fontSize: size.width * .05),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}