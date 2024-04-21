import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myapp/features/content1.dart';
import 'package:myapp/features/content2.dart';
import 'package:myapp/features/content3.dart';
import 'package:myapp/features/dashboard.dart';
import 'package:myapp/features/home_screen/home_screen.dart';
import 'package:myapp/features/screen2.dart';
import 'package:myapp/features/screen3.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: Route1.page, children: [
              AutoRoute(
                page: ContentRoute1.page,
              ),
              AutoRoute(
                page: ContentRoute2.page,
                initial: true,
              ),
              AutoRoute(
                page: ContentRoute3.page,
              ),
            ]),
            AutoRoute(
              page: Route2.page,
            ),
            AutoRoute(
              page: Route3.page,
            ),
          ],
        ),
        AutoRoute(
          page: RouteTest4.page,
        ),
      ];
}
