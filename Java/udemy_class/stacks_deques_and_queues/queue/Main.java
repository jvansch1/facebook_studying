public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World!");
    Queue q = new Queue();
    q.enqueue(1);
    q.enqueue(2);
    q.print();
    q.dequeue();
    q.print();
  }
}
