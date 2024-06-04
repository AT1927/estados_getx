import 'package:get/get.dart';
import 'package:estados/models/bikeroute.dart';

class BikeRouteController extends GetxController{
  var routes = <Route>[].obs;

  void addRoute(String routeName, double routeDistance, String routeDifficulty){
    routes.add(Route(name: routeName, distance: routeDistance, difficulty: routeDifficulty, completed: false));
  }

  void deleteRoute(int index){
    routes.removeAt(index);
  }

  void toggleRoute(int index){
    routes[index].completed = !routes[index].completed;
  }
}