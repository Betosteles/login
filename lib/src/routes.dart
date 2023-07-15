import '../pages/login.dart';
import '../pages/welcome.dart';

enum MyRoutes { login , welcome}

final routes = {
    MyRoutes.login.name: (context) => LoginPage(),
    MyRoutes.welcome.name: (context) => const WelcomePage(),
    
};