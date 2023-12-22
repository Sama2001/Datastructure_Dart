

///LinkeLists:
/*Challenge 4: Remove All Occurrences 
 Create a function that removes all occurrences of a specific element from a linked list.*/////

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

  void add(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void remove(int target) {
    while (head != null && head!.value == target) {
      head = head!.next;
    }

    Node? current = head;
    while (current != null && current.next != null) {
      if (current.next!.value == target) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }

  void Printing() {
    Node? current = head;
    while (current != null) {
       if (current.next != null) {
      stdout.write("${current.value} -> ");
    } else {
      stdout.write("${current.value}");
    }
      current = current.next;
    }
  }
}

void main() {
  print("------------------------------------");
  LinkedList test = LinkedList();
  test.add(4);
  test.add(3);
  test.add(3);
  test.add(3);
  test.add(1);

  print(" //original list:");
  test.Printing();
print("");
  test.remove(3);

  print("\n//List after removing all occurrences of 3:");
  test.Printing();
    print("\n------------------------------------");
}
