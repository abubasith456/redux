import 'package:redux_project/redux_font/action.dart';
import 'package:redux_project/redux_font/app_state.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is FontSize) {
    newState.fontSize = action.fontSize;
  } else if (action is Bold) {
    newState.isBold = action.isBold;
  } else if (action is Italic) {
    newState.isItalic = action.isItalic;
  }

  return newState;
}
