void main() {
  Node head = Node(
    Task(taskID: 1, taskText: "Study Data Structures."),
  );
  myInsertNewNodeToLinkedList(
    head,
    Task(taskID: 2, taskText: "Study ProbLem SoLving."),
  );
  myInsertNewNodeToLinkedList(
    head,
    Task(taskID: 3, taskText: "Study ALgorithms."),
  );
  myInsertNewNodeToLinkedList(
    head,
    Task(taskID: 4, taskText: "Study Programming."),
  );
  myPrintDataInLinkedList(head);
}

void myInsertNewNodeToLinkedList(Node head, Task newTask) {
  Node pointer = head;
  while (pointer.next != null) {
    pointer = pointer.next!;
  }
  pointer.next = Node(newTask);
}

void myPrintDataInLinkedList(Node head) {
  Node? pointer = head;
  while (pointer != null) {
    print(pointer.task.taskText);
    pointer = pointer.next;
  }
}

class Task {
  int taskID;
  String taskText;
  Task({
    required this.taskID,
    required this.taskText,
  });
}

class Node {
  Task task;
  Node? next;
  Node(this.task, [this.next]);
}
