

///////////Print Reverse Linkedlist//////////////////
import 'dart:io';

class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;

  void addNode(int value) {
    Node newNode = Node(value);
    newNode.next = head;
    head = newNode;
  }

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

  void ReversePrinting(Node? node) {
    if (node == null) {
      return;
    }

    ReversePrinting(node.next);
    print(node.value);
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  linkedList.addNode(3);
  linkedList.addNode(2);
  linkedList.addNode(1);
print("------------------------------");
  linkedList.Printing();

  print("after:");
  linkedList.ReversePrinting(linkedList.head);

  print("------------------------------");

}
