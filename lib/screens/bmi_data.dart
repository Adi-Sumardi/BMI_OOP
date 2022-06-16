import 'package:bmi_oop/constants/constant.dart';
import 'package:bmi_oop/helpers/bmi_calculator.dart';
import 'package:bmi_oop/screens/bmi_result.dart';
import 'package:bmi_oop/widget/bmi_card.dart';
import 'package:bmi_oop/widget/gender_icon_text.dart';
import 'package:flutter/material.dart';

class BmiData extends StatefulWidget {
  const BmiData({Key? key}) : super(key: key);

  @override
  State<BmiData> createState() => _BmiDataState();
}

class _BmiDataState extends State<BmiData> {
  int height = 100;
  int weight = 50;
  int age = 20;

  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      appBar: AppBar(
        title: const Center(child: Text("Body Mass Index Calculator")),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    gender = "Laki-Laki";
                    setState(() {});
                  },
                  child: BmiCard(
                    borderColor:
                        (gender == "Laki-Laki") ? Colors.white70 : primaryColor,
                    child: Stack(
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical:20.0),
                            child: GenderIconText(
                              icon: Icons.male,
                              title: 'Laki-Laki',
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                          Icons.check_circle,
                          color: (gender == "Laki-Laki")
                              ? Colors.white70
                              : primaryColor,
                                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  gender = "Perempuan";
                  setState(() {});
                },
                child: BmiCard(
                  borderColor:
                      (gender == "Perempuan") ? Colors.white70 : primaryColor,
                  child: Stack(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical:20.0),
                          child: GenderIconText(
                            icon: Icons.female,
                            title: 'Perempuan',
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                          Icons.check_circle,
                          color: (gender == "Perempuan")
                              ? Colors.white70
                              : primaryColor,
                                              ),
                        ),
                    ],
                  ),
                ),
              )),
            ],
          )),
          Expanded(
            child: BmiCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tinggi Badan",
                    style: labelTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("$height", style: numberTextStyle),
                      Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    min: 50,
                    max: 250,
                    value: height.toDouble(),
                    thumbColor: Colors.blue,
                    activeColor: Colors.lightBlueAccent,
                    onChanged: (value) {
                      height = value.toInt();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Berat",
                          style: labelTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: numberTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                weight -= 1;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black54,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff999DD8),
                              constraints: const BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                weight += 1;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.black54,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff999DD8),
                              constraints: const BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Umur",
                          style: labelTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$age",
                          style: numberTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                age -= 1;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black54,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff999DD8),
                              constraints: const BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                age += 1;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.black54,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff999DD8),
                              constraints: const BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

              final bmiCalculator =
                  BmiCalculator(height: height, weight: weight);
              bmiCalculator.calculateBmi();

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return BmiResult(
                    bmi: bmiCalculator.bmi!,
                  );
                }),
              );
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
                  "Hitung BMI",
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

