
import 'package:finanzas_personales/utils/preferencias.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  
  Rx<String> email = ''.obs; 
  Rx<String> pass  = ''.obs; 

  Rx<bool> passValid   = false.obs; 
  Rx<bool> emailValid  = false.obs; 

  Rx<bool> emailError  = false.obs; 
  Rx<bool> passError   = false.obs; 

  final Preferencias _prefs = Preferencias();


  void verificarCorreo(String email){
    this.email.value = email;
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);

    if(regExp.hasMatch(email)){
      emailValid.value = true;
      emailError.value = false;
    }else{
      emailValid.value = false;
      emailError.value = false;
    }
  }



  void verificarPass(String pass){
    this.pass.value = pass;
    if(pass.length > 4){
      passValid.value = true;
      passError.value = false;
    }else{
      passValid.value = false;
      passError.value = false;
    }
  }



  void doLogin(){
    if(emailValid.value && passValid.value){
      if(email.value == 'correo@correo.com'){
        if(pass.value == 'admin'){
          _prefs.token = 'login';
          Get.offAllNamed('/navigation');
        }else{
          passValid.value = false;
          passError.value = true;
        }
      }else{
        emailValid.value = false;
        emailError.value = true;
      }
    }
  }



}
