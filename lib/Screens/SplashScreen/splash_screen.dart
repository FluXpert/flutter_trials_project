import 'dart:async';
import 'package:my_print/MyPrint/print_class.dart';

import '../../Exporter/exporter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

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
  void dispose() {
    super.dispose();
    // WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint(
      "[ DEBUG PRINT ] [ LIFE CYCLE ] APP STATUS: $state | ${state.name}",
    );
  }

  @override
  Widget build(BuildContext context) {
    myPrint(
        data: "Height: ${MediaQuery.of(context).size.height}",
        screen: "SplashScreen",
        type: "Splash Build");
    myPrint(
      data: "Width: ${MediaQuery.of(context).size.width}",
      screen: "SplashScreen",
    );
    return const Scaffold(
      body: Center(
        child: Text("SplashScreen"),
      ),
    );
  }
}
