public class Stack {

  int[] store;
  int size;

  Stack(int[] store, int size) {
    this.store = store;
    this.size = size;
  }

  Stack() {
    this.store = new int[10];
    this.size = 0;
  }

  public void push(int value) {
    this.store[this.size] = value;
    this.size++;
  }

  public int pop() {
    int lastValue = this.store[this.size];
    this.store[this.size] = 0;
    this.size--;
    return lastValue;
  }

  public int peek() {
    return this.store[this.size - 1];
  }

  public Boolean isEmpty() {
    return this.size == 0;
  }
}
