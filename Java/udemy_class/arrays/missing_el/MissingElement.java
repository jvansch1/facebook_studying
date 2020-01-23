import java.util.*;

public class MissingElement {
  public static void main(String[] args) {
    int[] array1 = { 1, 2, 3, 4, 5, 6, 7 };
    int[] array2 = { 3, 7, 2, 1, 4, 6 };
    System.out.println(missingElement(array1, array2));
    System.out.println(MissingElementWithSum(array1, array2));
  }

  public static int missingElement(int[] array1, int[] array2) {
    HashMap<Integer, Boolean> array2Characters = new HashMap<>();

    for(int i = 0; i < array2.length; i++) {
      array2Characters.put(array2[i], true);
    }

    for(int i = 0; i < array1.length; i++) {
      if(!array2Characters.containsKey(array1[i])) {
        return array1[i];
      }
    }

    return 0;
  }

  public static int MissingElementWithSum(int[] array1, int[] array2) {

    // Find the sum of both arrays. Since there
    // is an el missing from array2, if we find the
    // difference that will be the el
    // we are looking for.

    int array1Sum = 0;
    int array2Sum = 0;

    for(int i = 0; i < array1.length; i++) {
      array1Sum += array1[i];
    }
    for(int i = 0; i < array2.length; i++) {
      array2Sum += array2[i];
    }

    return array1Sum - array2Sum;
  }
}
