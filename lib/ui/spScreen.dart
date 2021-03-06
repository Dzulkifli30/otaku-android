part of 'ui.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return SignIn();
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bgon.png"),fit: BoxFit.cover,),
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * .35,),
            Center(
              child: Image.asset('assets/img/logo.png', height: size.height * .20,),
            ),
            SizedBox(height: size.height * .30,),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text("Lanjutkan Belajarmu",style: TextStyle(color: Colors.white,fontSize: 18),),
                  Text("Bersama Dengan otak-ku",style: TextStyle(color: Colors.white,fontSize: 18),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}