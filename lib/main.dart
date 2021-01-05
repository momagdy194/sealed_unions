import 'package:sealed_unions_flutter/state.dart';

void main() {

print(myS(WeatherState.loaded(55)));

}
String myS(WeatherState state) {
  return state.join(
          (ini) => "thatis is Initial",
          (loading) => " ProgressIndicator()",
          (loaded) => "TeamPreture is ${loaded.weather} ");
}