import 'package:trials_project/Controller/CounterController/counter_controller.dart';
import 'package:trials_project/Exporter/exporter.dart';

class CounterPageGetX extends StatelessWidget {
  const CounterPageGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = CounterController();
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: RichText(
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              maxLines: 3,
              textScaleFactor: 1,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Value is: ",
                    style: poppinsFont.copyWith(
                      fontSize: 22.sp,
                    ),
                  ),
                  TextSpan(
                    text: "${counterController.counter}",
                    style: poppinsFont.copyWith(
                      fontSize: 30.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
