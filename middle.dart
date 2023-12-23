
//////////////find middle////////
import 'dart:io';


class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;

  LinkedList() {
    head = null;
  }

  void add(int value) {
    Node newNode = Node(value);
    newNode.next = head;
    head = newNode;
  }

  Node? Middle() {
    if (head == null) {
      return null; // Empty list
    }

    Node? pointer1 = head;
    Node? pointer2 = head;

    while (pointer2 != null && pointer2.next != null) {
      pointer1 = pointer1!.next;
      pointer2 = pointer2.next!.next;
    }

    return pointer1;
  }

  void Printing() {
    Node? current = head;
    while (current != null) {
       if (current.next != null) {
      stdout.write("${current.value} -> ");
    } else {
      stdout.write("${current.value}-> null");
    }
      current = current.next;
    }
  }
}

void main() {
    print("-------------------------------"); 

  LinkedList test = LinkedList();
  test.add(4);
  test.add(3);
  test.add(2);
  test.add(1);

  test.Printing();

  Node? middle = test.Middle();
  print("\n// middle is ${middle?.value }");
      print("-------------------------------"); 

}
