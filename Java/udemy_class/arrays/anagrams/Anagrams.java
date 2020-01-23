import java.util.*;

public class Anagrams {
  public static void main(String[] args) {
    System.out.println(anagrams("God", "Dog"));
    System.out.println(anagrams("Poop", "Dog"));
  }

  public static boolean anagrams(String string1, String string2) {
    HashMap<Character, Integer> count = new HashMap<>();

    for(int i = 0; i < string1.length(); i++) {
      char ch = Character.toLowerCase(string1.charAt(i));
      if (ch != ' ') {
        if (count.containsKey(ch)) {
          int current_count = (int)count.get(ch);
          count.put(ch, 1);
        } else {
          count.put(ch, 1);
        }
      }
    }

    for(int j = 0; j < string2.length(); j++) {
      char ch = Character.toLowerCase(string2.charAt(j));
      if(ch != ' ') {
        if (count.containsKey(ch)) {
          int current_count = (int)count.get(ch);
          count.put(ch, current_count - 1);
        } else {
          count.put(ch, 1);
        }
      }
    }

    System.out.println(count);

    Iterator it = count.entrySet().iterator();

    while (it.hasNext()) {
      Map.Entry keyValue = (Map.Entry)it.next();
      if ((int)keyValue.getValue() != 0) {
        return false;
      }
      it.remove();
    }

    return true;
  }
}
