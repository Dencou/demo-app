import 'package:get/get.dart';

class SnackBarW{

  static snackBars({title, message, code}){
    Get.snackbar(title ? title : "Error",message ? message : 'Unkown error ${code ? code : "C9421"}');
  }
  static snackBarAuthFail({title, message, code}){
    Get.snackbar(title ? title :"Error authenticating", message ? message : 'Please verify your credentials ${code ? code : "C9421"}');
  }
  static snackBarCredentialsInvalid({title,  message, code}){
    Get.snackbar(title ? title :"Error", message ? message : 'Credentials invalid ${code ? code : "C9421"}');
  }
  static snackBarInternalServerError({title, message, code}) {
    Get.snackbar(title ? title :"Server error", message ? message : 'Internal server error ${code ? code : "C9421"}');
  }
    static snackBarCantCompleteTransaction({title, message, code}){
    Get.snackbar(title ? title :"Error", message ? message : 'Cannot complete the transaction now, please try again later ${code ? code : "C9421"}');
  }
}

var snackBarW = SnackBarW();