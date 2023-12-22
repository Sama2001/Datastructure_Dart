
///////**stack 2:Balance the Parentheses ///////////////////////////////

class Stack<T> {
  List<T> list = [];

  void push(T item) {
    list.add(item);
  }

  T pop() {
    if (list.isEmpty) {
      throw StateError('Empty stack');
    }
    return list.removeLast();
  }

  bool get isEmpty => list.isEmpty;
}

String BalanceChecker(String input) {
  Stack<String> BalanceCheckerStack = Stack();

  for (int i = 0; i < input.length; i++) {
    String c = input[i];
    if (c == '(') {
      BalanceCheckerStack.push(c);
    } else if (c == ')') {
      if (BalanceCheckerStack.isEmpty) {
        return "Not balanced"; 
      }
      BalanceCheckerStack.pop();
    }
  }

  return BalanceCheckerStack.isEmpty ? "Balanced" : "Not balanced"; 
}

void main() {
  String balanced = "h((e))llo(world)()";
  String unbalanced = "(hello world";

  print(" $balanced--> ${BalanceChecker(balanced)}");

  print(" $unbalanced -->  ${BalanceChecker(unbalanced)}");
}
