import 'package:bmi_oop/constants/constant.dart';

class BmiCalculator{
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescryption;

  BmiCalculator({required this.height, required this.weight});
  BmiCalculator.fromBmiValue(this.bmi) {
      //this.bmi = bmi;
  }

  double calculateBmi() {
    double heightInMeter = height! / 100;

    // final h = pow(height, 2);
    final h = (heightInMeter * heightInMeter);
    // final bmi = weight / (heightInMeter * heightInMeter);
    bmi = weight! / h;

    return bmi!;
  }

  String determineBmiCategory(){
    String category = "";
    if (bmi! < 16){
      category = underweightSevere;
    } else if (bmi! < 17){
      category = underweightModerate;
    } else if (bmi! < 18.5){
      category = underweightMild;
    } else if (bmi! < 25){
      category = normal;
    } else if (bmi! < 30){
      category = overweight;
    } else if (bmi! < 35){
      category = obeseI;
    } else if (bmi! < 40){
      category = obeseII;
    } else if (bmi! >= 40){
      category = obeseIII;
    }
    bmiCategory = category;
    return bmiCategory!;
  }

  String getHealthRiskDescryption(){
    String desc ="";
    switch (bmiCategory!) {
      case underweightSevere:
      case underweightModerate:
      case underweightMild:
        desc = "Kemungkinan Kekurangan Nutrisi dan Osteoporosis";
        break;
      case normal:
        desc = "Risiko Rendah (Kisaran Sehat)";
        break;
      case overweight:
        desc = "Risiko Sedang Terkena Penyakit Jantung, Tekanan Darah Tinggi, Stroke, dan Diabetes Mellitus";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc = "Risiko Tinggi Terkena Penyakit Jantung, Tekanan Darah Tinggi, Stroke, Diabetes mellitus, dan Sindrom Metabolisme";
        break;
      default:
    }
    bmiDescryption = desc;
    return bmiDescryption!;
  }

}