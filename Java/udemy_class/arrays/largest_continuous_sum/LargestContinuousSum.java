import java.util.*;

public class LargestContinuousSum {
  public static void main(String[] args) {
    System.out.println(reverseSentence("Hello world"));
    System.out.println(reverseSentence("This is the best"));
  }

  public static String reverseSentence(String sentence) {
    // First go through and find the number of words so we
    // know how long to make our array

    int numberOfSpaces = 0;

    for(int i = 0; i < sentence.length(); i++) {
      if(sentence.charAt(i) == ' ') {
        numberOfSpaces += 1;
      }
    }

    String[] words = new String[numberOfSpaces + 1];
    String currentWord = "";
    int wordIndex = numberOfSpaces;

    for(int i = 0; i < sentence.length(); i++) {
      if(sentence.charAt(i) == ' ') {
        words[wordIndex] = currentWord;
        wordIndex -= 1;
        currentWord = "";
      } else {
        currentWord += sentence.charAt(i);
      }
    }

    words[0] = currentWord;

    return String.join(" ", words);
  }
}
