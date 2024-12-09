import "./day2_input.dart";
import "./helper_functions.dart";
import"dart:math";

void day2SolutionPt1(){
  // get the lists
  final reports = readInput(input);
  // find the safe and unsafe reports
  final reportsStatus = reports.map((report)=>isSafeReport(report)).toList();
  //count how many reports are safe
  final result = reportsStatus.where((isSafe)=>isSafe).length;

  print(result);
}

void day2SolutionPt2(){
  final reports= readInput(testInput);

  final safeReports = reports.where((report)=>isSafeReport(report));

  print(safeReports);
}