import 'dart:io';

void main()
{
  stdout.write("กรอกน้ำหนัก (kg): ");
  double weight = double.parse(stdin.readLineSync()!);
  stdout.write("กรอกส่วนสูง (cm): ");
  double heightCm = double.parse(stdin.readLineSync()!);

  double heightM = heightCm / 100;
  double bmi = weight / (heightM * heightM);

  String status = "";
  if (bmi < 18.5) {
    status = "ผอม";
  } else if (bmi < 25) {
    status = "ปกติ";
  } else if (bmi < 30) {
    status = "ท้วม";
  } else {
    status = "อ้วน";
  }

  print("\nน้ำหนัก: $weight kg");
  print("ส่วนสูง: $heightCm cm");
  print("BMI = ${bmi.toStringAsFixed(2)}");
  print("สถานะ: $status");
}