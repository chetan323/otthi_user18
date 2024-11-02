import 'package:auto_route/auto_route.dart';
import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/dashboard.dart';
import 'package:foodapp/feature/login/presentation/screen/login_screen.dart';
import 'package:foodapp/feature/login/presentation/screen/signup_screen.dart';
import 'package:foodapp/feature/onboarding/presentation/screen/onboarding_screen.dart';
import '../cart/presentation/screen/menu_screen.dart';
import '../dashboard/presentation/screen/widget/base_bottom_nav_bar.dart';
import '../login/presentation/screen/initial_screen.dart';
import '../login/presentation/screen/reset_password_screen.dart';

part 'auto_route.gr.dart'; // Import the generated file

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/onboarding_screen',
      page: SplashRoute.page, // Generated route for Onboarding
      initial: true,
    ),
    AutoRoute(
      path: '/user_screen',
      page: UserRoute.page, // Use unique path for user screen
    ),
    AutoRoute(
      path: '/login_screen',
      page: LoginRoute.page, // Path for login
    ),
    AutoRoute(
      path: '/reset_password_screen',
      page: ResetPasswordRoute.page, // Path for reset password
    ),
    AutoRoute(
      path: '/dashboard',
      page: DashboardRoute.page, // Path for dashboard

    ),
    AutoRoute(
      page: BottomNavRoute.page, // Path for dashboard
      children: [  // Add child routes here
        AutoRoute( page: DashboardRoute.page),

      ],
    ),


    AutoRoute(
      path: '/signup_screen',
      page: SignUpRoute.page, // Path for signup
    ),
    AutoRoute(
      path: '/cart',
      page: MenuRoute.page, // Path for cart/menu
    ),
  ];
}
