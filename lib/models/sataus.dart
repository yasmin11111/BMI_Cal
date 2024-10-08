// ignore_for_file: non_constant_identifier_names

class status {
  String statisfun({required double Res}) {
    if (Res < 0 || Res > 50) {
      return "Error";
    } else if (Res < 18.5) {
      return "UndeRweight";
    } else if (Res >= 18.5 && Res <= 24.9) {
      return "NoRmal";
    } else if (Res >= 25 && Res <= 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
}
