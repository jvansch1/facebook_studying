public class Queue {

  int[] store;
  int insertIndex = 9; // Given out max size is 10

  Queue(int[] store, int size) {
    this.store = store;
    this.insertIndex = 9 - size;
  }

  Queue() {
    this.store = new int[10];
    this.insertIndex = 9;
  }

  public void enqueue(int value) {
    this.store[this.insertIndex] = value;
    this.insertIndex--;
  }

  public void dequeue() {
    this.store[9] = 0;
    for(int i = 9; i > insertIndex; i--) {
      this.store[i] = this.store[i - 1];
    }
    this.insertIndex++;
  }

  public void print() {
    for(int i = this.insertIndex + 1; i <= 9; i++) {
      System.out.print(this.store[i]);
    }
    System.out.println("\n");
  }



}
