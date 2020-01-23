import java.util.*;

public class UniqueString {
  public static void main(String[] args) {
    System.out.println("Hello World");
    System.out.println(uniqueStringHash("abcde"));
    System.out.println(uniqueStringHash("dod"));
    System.out.println(uniqueStringSet("abcde"));
    System.out.println(uniqueStringSet("dod"));
  }

  public static Boolean uniqueStringHash(String string) {
    HashMap<Character, Boolean> charactersSeen = new HashMap<>();

    for(int i = 0; i < string.length(); i++) {
      if(charactersSeen.containsKey(string.charAt(i))) {
        return false;
      } else {
        charactersSeen.put(string.charAt(i), true);
      }
    }

    return true;
  }

  public static Boolean uniqueStringSet(String string) {
    Set<Character> charactersSeen = new HashSet<>();

    for(int i = 0; i < string.length(); i++) {
      if(charactersSeen.contains(string.charAt(i))) {
        return false;
      } else {
        charactersSeen.add(string.charAt(i));
      }
    }

    return true;
  }
}
