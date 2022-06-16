import 'package:bmi_oop/constants/constant.dart';
import 'package:bmi_oop/helpers/bmi_calculator.dart';
import 'package:bmi_oop/widget/bmi_card.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({Key? key, required this.bmi}) : super(key: key);

  final double bmi;

  @override
  Widget build(BuildContext context) {

    final BmiCalculator bmiCalculator = BmiCalculator.fromBmiValue(bmi);

    // final bmiCategory = 
    bmiCalculator.determineBmiCategory();
    // final bmiDesc = 
    bmiCalculator.getHealthRiskDescryption();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Hitung BMI"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Hasil Perhitungan BMI",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiCalculator.bmiCategory!,
                      style:const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style:const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      bmiCalculator.bmiDescryption!,
                      textAlign: TextAlign.center,
                      style:const TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 60,
              margin:const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              color: boxColor,
              ),
              child: const Center(
                child: Text(
                  "Hitung Ulang",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
