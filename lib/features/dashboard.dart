import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        Route1(),
        Route2(),
        Route3(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("URL SHORTENER"),
            centerTitle: true,
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(
                  text: 'home Page',
                ),
                Tab(
                  text: 'Second Page',
                ),
                Tab(
                  text: 'Third Page',
                ),
              ],
            ),
          ),
          body: child,
        );
      },
    );
    // return AutoTabsRouter(
    // routes: const [
    //   Route1(),
    //   Route2(),
    //   Route3(),
    // ],
    //   transitionBuilder: (context, child, animation) => FadeTransition(
    //     opacity: animation,
    //     child: child,
    //   ),
    //   builder: (context, child) {
    //     final tabsRouter = AutoTabsRouter.of(context);
    //     return Scaffold(
    //       body: child,
    //       bottomNavigationBar: BottomNavigationBar(
    //         currentIndex: tabsRouter.activeIndex,
    //         onTap: tabsRouter.setActiveIndex,
    //         items: const [
    // BottomNavigationBarItem(
    //   label: 'Users',
    //   icon: Icon(Icons.home),
    // ),
    // BottomNavigationBarItem(
    //   label: 'Posts',
    //   icon: Icon(Icons.post_add),
    // ),
    // BottomNavigationBarItem(
    //   label: 'Settings',
    //   icon: Icon(Icons.settings),
    // ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
