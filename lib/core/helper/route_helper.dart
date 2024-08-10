

import 'package:go_router/go_router.dart';

class AppRouteHelper {
  AppRouteHelper._();


  static Future<Object?> pushNamedRoute (context ,String path,) {
    return  GoRouter.of(context).push(path);
  }


  static  popNamedRoute<T extends Object?> (context ,[T? result]) async {
    return GoRouter.of(context).pop();
  }







}