// import 'package:esasync/esasync.dart' as esasync;

// void main(List<String> arguments) async {
//   Future<int> r = doSomething();

//   r.then((value) => doSomething().then((value) => doSomething().then(
//         (value) => doSomething(),
//       )));
// }

// Future<int> doSomething() async {
//   return Future.delayed(Duration(milliseconds: 2000), () {
//     return 2;
//   });
// }

import 'package:esasync/future_service.dart';

void main(List<String> arguments) async {
  // int res = await doSomething();
  // int res1 = await doSomething();
  // int res2 = await doSomething();
  // int res3 = await doSomething();
  // int res4 = await doSomething();

  List<int> data = await Future.wait<int>([
    FutureService.doSomething(5000),
    FutureService.doSomething(1000),
    FutureService.doSomething(3000)
  ]);

  print(data);
}
