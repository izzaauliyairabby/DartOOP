

/* Ketika kita menerapkan dependency inversion, terkadang ada method di
 dalam interface yang dapat mengembalikan 2 jenis nilai, yaitu bertipe 
 Future atau bukan. Di sinilah kegunaan FutureOr, yaitu sebuah tipe
  yang menunjukkan bahwa sebuah fungsi dapat mengembalikan
   nilai secara langsung 
(non Future) atau pada suatu saat
 tertentu / memerlukan waktu (Future).  */

void main(List<String> args) {
  
}

// D_Right
class User {
// User related things
int age = 0;
}

class UserManager {
  final IDatastorage datastorage;
  UserManager(this.datastorage);
  void saveUserData(User user, int option) {
    datastorage.saveData(user);
  }
  FutureOr<int> getUserAge(User user) async {
    return await datastorage.getUserAge(user);
  }
}

 abstract class IDatastorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
  loadData()
}

class FirebaseStorage implements IDatastorage {
@override
void saveData(User user) {
// connect to firebase
// save data


@override
// ambil data di firebase
FutureOr<int> getUserAge(User user) async {
await Future.delayed(Duration(seconds: 1));
return 20;
  }
}

 class LocalStorage implements IDatastorage {
@override
void saveData(User user) {
// connect to local storage
// save data
}

@override
int getUserAge(User user) {
// Ambil tanggal lahir dari user
// Bandingkan tanggal lahir dengan tanggal sekarang
// Lalu hitung umurnya
return 10;