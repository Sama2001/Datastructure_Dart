
///////////// stack : 1-Reverse a list//////////////////////

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
print("before reversing: $inputList");
  List<int> newList = [];
  while (!stack.isEmpty) {
    newList.add(stack.pop());
  }

  return newList; //after reversing
}

void main() {
  List<int> test = [1,2,3,4,5,6,7,8,9,10];
  List<int> afterReversing = Reverse(test);
  print("After reversing: $afterReversing");
}
