extension StringExtension on String{  bool get isNotNullOrEmpty{    if(this!=null && this.isNotEmpty){      return true;    }    return false;  }}