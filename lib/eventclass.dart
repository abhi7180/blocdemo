import 'package:blocdemo/blocclass.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class eventclass extends Bloc<blocclass, Map> {
  int sum = 0;
  String status = "";

  Map<String , dynamic> ss={};


  eventclass(Map initialState) : super(initialState) {
    on<blocclass>((event, emit) {
      if (event.r == "radio") {
        emit(event.val!);
      }
      if (event.r == "sum") {
        sum = int.parse(event.a!) + int.parse(event.b!);
        emit(status.toString());
        print(sum);
      }
      // else {
      //   emit(status.toString());
      //   print(status);
      // }
      if (sum>16 && sum<18) {
        status = "underweight";

      }
      // if () {
      //   status = "normal";
      // }
      // if () {
      //   status = "overweight";
      // }
    });
  }

// eventclass(Map initialState) : super(initialState){
//
//
//   on((blocclass bclass, emit) {
//
//     d=(int.parse(bclass.a!).toDouble()~/(int.parse(bclass.b!).toDouble()*int.parse(bclass.b!).toDouble())) as double;
//
//     if(d<18)
//       {
//         emit ();
//       }
//
//
//
//
//
//   });
// }

}
