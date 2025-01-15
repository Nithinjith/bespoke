
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {

  final authGuard=AuthGuard();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page,path: '/login',),
    AutoRoute(page: RegisterRoute.page,path: '/register',),
    AutoRoute(page: HomeRoute.page,path: '/',guards: [authGuard]),
  ];
}
class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {

    final bool isLoggedIn = await checkIfUserIsLoggedIn();

    if (isLoggedIn) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }

  Future<bool> checkIfUserIsLoggedIn() async {

    final user = FirebaseAuth.instance.currentUser;
    return user != null;
  }
}