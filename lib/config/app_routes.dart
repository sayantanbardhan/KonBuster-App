import 'package:sih/pages/edit_profile_page.dart';
import 'package:sih/pages/favorite_page.dart';
import 'package:sih/pages/home_page.dart';
import 'package:sih/pages/login_page.dart';
import 'package:sih/pages/login_page_org.dart';
import 'package:sih/pages/main_page.dart';
import 'package:sih/pages/profile_page.dart';
import 'package:sih/pages/search_page.dart';
import 'package:sih/pages/sign_up_page.dart';
import 'package:sih/pages/users_page.dart';

class AppRoutes {
  static final pages = {
    '/users': (context) => UsersPage(),
    '/login': (context) => LoginPage(),
    '/loginorg': (context) => LoginOrgPage(),
    '/home': (context) => HomePage(),
    '/favorite': (context) => FavoritePage(),
    '/search': (context) => SearchPage(),
    '/signup': (context) => SignUp(),
    '/main': (context) => MainPage(),
    '/profile': (context) => ProfilePage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const users = '/users';
  static const login = '/login';
  static const loginorg = '/loginorg';
  static const home = '/home';
  static const main = '/main';
  static const profile = '/profile';
  static const editProfile = '/edit_profile';
  static const signup = '/signup';
  static const favorite = '/favorite';
  static const search = '/search';
}
