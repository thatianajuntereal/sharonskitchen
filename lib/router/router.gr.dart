// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../model/meal.dart' as _i6;
import '../view/initial_screen.dart' as _i1;
import '../view/order_screen.dart' as _i3;
import '../view/pasta_list_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    InitialScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitialScreen(),
      );
    },
    PastaListScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PastaListScreen(),
      );
    },
    OrderScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OrderScreenRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.OrderScreen(
          key: args.key,
          meal: args.meal,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          InitialScreenRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          PastaListScreenRoute.name,
          path: '/pasta-list-screen',
        ),
        _i4.RouteConfig(
          OrderScreenRoute.name,
          path: '/order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.InitialScreen]
class InitialScreenRoute extends _i4.PageRouteInfo<void> {
  const InitialScreenRoute()
      : super(
          InitialScreenRoute.name,
          path: '/',
        );

  static const String name = 'InitialScreenRoute';
}

/// generated route for
/// [_i2.PastaListScreen]
class PastaListScreenRoute extends _i4.PageRouteInfo<void> {
  const PastaListScreenRoute()
      : super(
          PastaListScreenRoute.name,
          path: '/pasta-list-screen',
        );

  static const String name = 'PastaListScreenRoute';
}

/// generated route for
/// [_i3.OrderScreen]
class OrderScreenRoute extends _i4.PageRouteInfo<OrderScreenRouteArgs> {
  OrderScreenRoute({
    _i5.Key? key,
    required _i6.Meal meal,
  }) : super(
          OrderScreenRoute.name,
          path: '/order-screen',
          args: OrderScreenRouteArgs(
            key: key,
            meal: meal,
          ),
        );

  static const String name = 'OrderScreenRoute';
}

class OrderScreenRouteArgs {
  const OrderScreenRouteArgs({
    this.key,
    required this.meal,
  });

  final _i5.Key? key;

  final _i6.Meal meal;

  @override
  String toString() {
    return 'OrderScreenRouteArgs{key: $key, meal: $meal}';
  }
}
