import java.util.*;

public class PairSum {
  public static void main(String[] args) {
    int[] list = { 1, 3, 2, 2 };
    int[][] response = (pairSum(list, 4));

    System.out.println(Arrays.deepToString(response));

  }

  public static int[][] pairSum(int[] list, int sum) {
    int list_length = list.length;
    // int[][] pairs = new int[list_length][2];
    int[][] pairs = new int[list.length][];

    HashMap<Integer, Integer> differences = new HashMap<>();

    for(int i = 0; i < list.length; i++) {
      int target = sum - list[i];
      differences.put(list[i], target);
    }

    int pair_index = 0;

    for(int i = 0; i < list.length; i++) {
      int target = sum - list[i];

      if(differences.containsKey(target)) {
        int[] pair = new int[2];
        pair[0] = list[i];
        pair[1] = target;
        pairs[pair_index] = pair;
        pair_index++;
      }
    }

    return pairs;
  }
}
