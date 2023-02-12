import 'dart:async';
import '../../Exporter/exporter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(
        seconds: 3,
      ),
      () => Get.offNamed(
        MyPages.counterScreen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    myPrint(
      message: "Height: ${MediaQuery.of(context).size.height}",
      printType: "SplashScreen",
    );
    myPrint(
      message: "Width: ${MediaQuery.of(context).size.width}",
      printType: "SplashScreen",
    );
    return const Scaffold(
      body: Center(
        child: Text("SplashScreen"),
      ),
    );
  }
}
