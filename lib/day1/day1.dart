import "dart:math";
import "./day1_input.dart";
void day1SolutionPt1() {
  List<int> A = [];
  List<int> B = [];
// Divide the string into two lists
final listReco = getTwoLists(input);
A.addAll(listReco.$1);
B.addAll(listReco.$2);
//sort the lists
  A.sort();
  B.sort();

  // Find the difference between lists items
  List<int> dif = [];
  for(int i=0; i< A.length; i++){
    dif.add((A[i]-B[i]).abs());
  }
  //Find the sum of the differences list
  final result = dif.sum;
  //final result 🥁
 print(result);
}

void day1SolutionPt2(){
  List<int> A = [];
  List<int> B = [];
// Divide the string into two lists
  final listReco = getTwoLists(input);
  A.addAll(listReco.$1);
  B.addAll(listReco.$2);
// find the similarity between two lists
  List<int> similarityList=[];
  for(int i=0; i<A.length; i++){
    int count =0;
    for(int j=0; j<A.length; j++){
      if(A[i]==B[j]) count++;
    }
    similarityList.add(count);
  }
//find the similarity Score List
final List<int> similarityScoreList = [];
  for(int i=0; i<A.length; i++){
    final mul = A[i] * similarityList[i];
    similarityScoreList.add(mul);
  }
// the final result
  final result = similarityScoreList.sum;
  print(result);
}

(List<int>, List<int>) getTwoLists(String input){
  final allNums = input.split("\n");
  final List<int> A = [];
  final List<int> B = [];
  for(final pair in allNums){
    final temp = pair.split("   ");
    A.add(int.parse(temp[0]));
    B.add(int.parse(temp[1]));
  }

  return (A,B);
}
// sum a list content
extension ListSum on List<int>{
  int get sum => fold(0,(perv,next)=>perv+next);
}

