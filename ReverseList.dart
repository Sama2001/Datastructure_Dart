
///////////// stack : 1-print list in Reverse //////////////////////
import 'dart:io';
class Stack<int> {
  List<int> list1 = [];

  void push(int number) {
    list1.add(number);
  }

  int pop() {
    if (list1.isEmpty) {
      throw StateError('Empty!!');
    }
    return list1.removeLast();
  }

  bool get isEmpty => list1.isEmpty;
}

List<int> Reverse<int>(List<int> inputList) {
  Stack<int> stack = Stack();

  for (int item in inputList) {
    stack.push(item);
  }


  List<int> newList = [];
  while (!stack.isEmpty) {
    newList.add(stack.pop());
  }

  return newList; //after reversing
}

void Printing<int>(List<int> inputList) {
  stdout.write("[");
  for (int i in inputList) {
    
    stdout.write(i);
    if (i != inputList.length){
        stdout.write(", ");
    }
  }
  stdout.write("]");
   
}
void main() {
   print("----------------------------------------------------------------");
  List<int> test = [1,2,3,4,5,6,7,8,9,10];
    stdout.write("before reversing: " );
    Printing(test);
    print("\n");
  List<int> afterReversing = Reverse(test);
  print("After reversing: $afterReversing");
     print("--------------------------------------------------------------");

}
