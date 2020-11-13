import 'package:bloc/bloc.dart';
import 'package:fisharp/src/tools_shop/screens/home/home_screen.dart';
import 'package:fisharp/src/education/bottomNav.dart';

enum NavigationEvents {
  HomeScreenClickedEvent,
  BottomNavClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => BottomNav();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeScreenClickedEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.BottomNavClickedEvent:
        yield BottomNav();
        break;
    }
  }
}
