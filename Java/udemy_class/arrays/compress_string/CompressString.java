public class CompressString {
  public static void main(String[] args) {
    System.out.println("Hello World!");
    System.out.println(compressString("AAAABB"));
  }

  public static String compressString(String inputString) {
    String outputString = "";
    char currentLetter = inputString.charAt(0);
    int currentLetterCount = 1;

    for(int i = 1; i < inputString.length(); i++) {
      if(inputString.charAt(i) != currentLetter) {
        outputString += currentLetter;
        outputString += currentLetterCount;
        currentLetter = inputString.charAt(i);
        currentLetterCount = 1;
      } else {
        currentLetterCount++;
      }
    }

    outputString += currentLetter;
    outputString += currentLetterCount;

    return outputString;
  }
}
