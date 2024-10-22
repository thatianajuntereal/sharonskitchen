import 'package:auto_route/auto_route.dart';
import 'package:sharonskitchen/view/initial_screen.dart';
import 'package:sharonskitchen/view/order_screen.dart';
import 'package:sharonskitchen/view/pasta_list_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: InitialScreen, initial: true),
    AutoRoute(page: PastaListScreen),
    AutoRoute(page: OrderScreen)
  ],
)
class $AppRouter {}
