public class Main {
  public static void main(String[] args) {
    Stack stack = new Stack();
    System.out.println(stack.isEmpty());
    stack.push(1);
    System.out.println(stack.peek());
    stack.push(2);
    System.out.println(stack.peek());
    stack.pop();
    System.out.println(stack.peek());
    System.out.println(stack.isEmpty());

    Stack stack2 = new Stack(new int[] { 1, 2 }, 2);
    System.out.println(stack2.peek());
  }
}
