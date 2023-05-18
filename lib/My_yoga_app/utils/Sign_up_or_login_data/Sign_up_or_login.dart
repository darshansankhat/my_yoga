import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  Future<void> appUser({ String? email,  String? password, String? mobil,bool? opt})
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    shr.setString("mobil", mobil!);
    shr.setString("email", email!);
    shr.setString("pass", password!);
    shr.setBool("login", opt!);
  }
  
  Future<Map<dynamic, dynamic?>> userLogin()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? mobil=shr.getString("mobil");
    String? email=shr.getString("email");
    String? pass=shr.getString("pass");
    bool? login=shr.getBool("login");

    return {"mobil":mobil,"email":email,"pass":pass,"login":login};
  }

  Future<void> userLogout()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.clear();
  }

  Future<void> introDone()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();

    shr.setBool("done", true);
  }

  Future<bool?> introDoneRead()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool? done=shr.getBool("done");
    return done;
  }
}