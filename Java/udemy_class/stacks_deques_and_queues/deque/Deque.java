import java.util.*;

public class Deque {

  int[] store;
  int rearIndex;

  Deque() {
    this.store = new int[10];
    this.rearIndex = 0;
  }

  public void addFront(int value) {
    for(int i = this.rearIndex; i > 0; i--) {
      this.store[i] = this.store[i - 1];
    }
    this.rearIndex++;
  }

  public void addRear(int value) {
    this.store[this.rearIndex] = value;
    this.rearIndex++;
  }

  public void inspect() {
    Arrays.toString(this.store);
  }

}
