import 'package:trials_project/Controller/CounterController/counter_controller.dart';
import 'package:trials_project/Exporter/exporter.dart';

class CounterPageGetX extends StatelessWidget {
  const CounterPageGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = CounterController();
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: counterController.decrementCounter,
                child: Center(
                  child: Icon(
                    Icons.remove,
                    size: 20.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 20.r,
              ),
              FloatingActionButton(
                onPressed: counterController.incrementCounter,
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => RichText(
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
                        fontSize: 38.sp,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
