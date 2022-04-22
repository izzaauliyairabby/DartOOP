import 'Static Keyword.dart';

void main(List<String> args) async {
  var o = orang2();
  print('job1');
  print('job2');
  o.getDataAsync().then((_) {
    print('job3 : ' + o.name);
  });
  print('job4');
}

class orang2 {
  String name = 'Default Name';

  void getData() {
    name = 'joko'; //misalnya ambil databae 3 detik
    print('get data [done]');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'joko'; //misalnya ambil databae 3 detik
    print('get data [done]');
  }
}
