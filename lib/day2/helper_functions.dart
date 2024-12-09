// check if the List is safeOrNot
bool isSafeReport(List<int> report){
  // find if it's not decreasing or increasing
  if(!(isIncreasing(report) || isDecreasing(report))) return false;
  // find if the increase or decrease is between 1 and 3
  if(isGradualDiff(report)) return true;
  //default
  return false;
}
// check if the List is decreasing
bool isDecreasing(List<int> items){
  for(int i=0; i<items.length - 1; i++){
    // If a number is bigger than the previous number then the list is not decreasing
    if(!(items[i]>items[i+1])){
      return false;
    }
  }
  return true;
}
// check if the List is increasing
bool isIncreasing(List<int> items){
  for(int i=0; i<items.length - 1; i++){
    // If a number is bigger than the previous number then the list is not decreasing
    if(!(items[i]<items[i+1])){
      return false;
    }
  }
  return true;
}
// check if the List's items are gradually changing
bool isGradualDiff(List<int> items){
  for(int i=0; i<items.length - 1; i++){
    //If the difference between items is bigger than three or less than one then it's unsafe
    final diff = (items[i]-items[i + 1]).abs();
    if(diff < 1 || diff > 3){
      return false;
    }
  }
  return true;
}
// read the String input
List<List<int>> readInput(String input) => input.split("\n").map((list)=>list.split(" ").toInt).toList();

// this is used to convert strings' list into integers
extension ToInt on List<String>{
  List<int> get toInt => map((str)=> int.parse(str)).toList();
}