import 'dart:io';

void main()
{
  stdout.write("ใส่คะแนน: ");
  int score = int.parse(stdin.readLineSync()!);

  String grade = (score >= 80)
      ? "A"
      : (score >= 70)
      ? "B"
      : (score >= 60)
      ? "C"
      : "F";
  print("คะแนน: $score เกรด: $grade");
}