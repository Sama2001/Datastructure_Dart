
/*/////Linked List:  Challenge 1: Print in Reverse *////

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
//////////reversing///////////////////////
  void RevereseLinkedList() {    
    Node? previous = null;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }

    head = previous;
  }
///////////////////////printing///////////////////////////////
void Printing() {
  Node? current = head;
  while (current != null) {
    if (current.next != null) {
      stdout.write("${current.value} -> ");
    } else {
      stdout.write("${current.value} -> null");
    }
    current = current.next;
  }
  stdout.write("\n"); 
}

}

void main() {
   print("---------------------------");
  LinkedList Test = LinkedList();
  Test.add(3);
  Test.add(2);
  Test.add(1);
 stdout.write("//before:");
  Test.Printing();
  print("");
  Test.RevereseLinkedList();
  stdout.write("//after: ");
  Test.Printing();
     print("---------------------------");

}
