import 'package:esasync/esercizio/quote_service.dart';
//import 'package:esasync/future_service.dart';

void main(List<String> arguments) async {
  QuoteService().getQuote();
  // int res = await doSomething();
  // int res1 = await doSomething();
  // int res2 = await doSomething();
  // int res3 = await doSomething();
  // int res4 = await doSomething();

  // List<int> data = await Future.wait<int>([
  //   FutureService.doSomething(5000),
  //   FutureService.doSomething(1000),
  //   FutureService.doSomething(3000)
  // ]);

  // print(data);
}
