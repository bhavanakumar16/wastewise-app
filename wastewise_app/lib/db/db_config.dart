import 'package:firebase_database/firebase_database.dart';

FirebaseDatabase database = FirebaseDatabase.instance;
DatabaseReference ref = FirebaseDatabase.instance.ref();
Future<dynamic> getData() async {
  ref.child('/').once().then((DatabaseEvent event) {
    final data = event.snapshot.value;
    print('Retrieved data: $data');
    return data;
  }).catchError((error) {
    print('Failed to read data: $error');
  });
}
