import 'package:get/get.dart';
import 'package:krishnakushwahtest2/core/constant/route_constant.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/binding/profile_pagebinding.dart';
import 'package:krishnakushwahtest2/feature/Profile_pagebottam/view/profile_pageview.dart';
import 'package:krishnakushwahtest2/feature/bottambar_firstview/binding/binding_signup2.dart';
import 'package:krishnakushwahtest2/feature/bottambar_firstview/view/bottambar_signup2.dart';
import 'package:krishnakushwahtest2/feature/dashboard/binding/dashboard_binding.dart';
import 'package:krishnakushwahtest2/feature/dashboard/view/dashboard_page.dart';
import 'package:krishnakushwahtest2/feature/login/binding/login_binding.dart';
import 'package:krishnakushwahtest2/feature/login/view/login_page.dart';
import 'package:krishnakushwahtest2/feature/signup/binding/signup_binding.dart';
import 'package:krishnakushwahtest2/feature/signup/view/signup_page.dart';
import 'package:krishnakushwahtest2/feature/splashscreen/binding/splash_binding.dart';
import 'package:krishnakushwahtest2/feature/splashscreen/view/splash_view.dart';



List<GetPage> getPages =[

  GetPage(name:RouteConstant.dashboard,
      page:()=> DashboardView(),
      binding: DashboardBinding()
  ),
  GetPage(name: RouteConstant.signup,
      page:()=> SignupView(),
  binding:SignupBinding()
  ),
  GetPage(name: RouteConstant.signupTwo,
      page:()=> Signuptwo(),
  binding: SignupTwoBinding()),
  GetPage(
      name:RouteConstant.bottam2,
      page:()=>BottamProfileView(),
  binding: BottamProfileBinding()),
  GetPage(
      name:RouteConstant.splash,
      page:()=>SplashScreen(),
      binding: SplashBinding()),
  GetPage(
      name:RouteConstant.login,
      page:()=>LoginView(),
      binding: LoginBinding())

];