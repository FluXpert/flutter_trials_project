import '../Exporter/exporter.dart';
import '../Exporter/export_page.dart';

class MyRoutes {
  static generateRoute() => <GetPage<dynamic>>[
        getPage(
          pageName: MyPages.splashScreen,
          pageWidget: const SplashScreen(),
        ),
        getPage(
          pageName: MyPages.homeScreen,
          pageWidget: const HomeScreen(),
        ),
        getPage(
          pageName: MyPages.testScreen,
          pageWidget: const TestScreen(),
        ),
        getPage(
          pageName: MyPages.counterScreen,
          pageWidget: const CounterPageGetX(),
        ),
      ];

  static getPage({
    required String pageName,
    required dynamic pageWidget,
  }) =>
      GetPage(
        name: pageName,
        page: () => pageWidget,
      );
}
