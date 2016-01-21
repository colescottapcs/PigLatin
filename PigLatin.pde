import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	return sWord.indexOf("a") < sWord.indexOf("e") && sWord.indexOf("a") < sWord.indexOf("i") && sWord.indexOf("a") < sWord.indexOf("o") && sWord.indexOf("a") < sWord.indexOf("u") ? sWord.indexOf("a") :
	       sWord.indexOf("e") < sWord.indexOf("a") && sWord.indexOf("e") < sWord.indexOf("i") && sWord.indexOf("e") < sWord.indexOf("o") && sWord.indexOf("e") < sWord.indexOf("u") ? sWord.indexOf("e") :
	       sWord.indexOf("i") < sWord.indexOf("a") && sWord.indexOf("i") < sWord.indexOf("e") && sWord.indexOf("i") < sWord.indexOf("o") && sWord.indexOf("i") < sWord.indexOf("u") ? sWord.indexOf("i") :
	       sWord.indexOf("o") < sWord.indexOf("a") && sWord.indexOf("o") < sWord.indexOf("e") && sWord.indexOf("o") < sWord.indexOf("i") && sWord.indexOf("o") < sWord.indexOf("u") ? sWord.indexOf("o") :
	       sWord.indexOf("u") < sWord.indexOf("a") && sWord.indexOf("u") < sWord.indexOf("e") && sWord.indexOf("u") < sWord.indexOf("i") && sWord.indexOf("u") < sWord.indexOf("o") ? sWord.indexOf("u") : -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int firstVowel = findFirstVowel(sWord);

	return firstVowel == 0 ? sWord + "way" :
		   firstVowel == -1 ? ay(sWord, 0) :
		   sWord.startsWith("thr") ? ay(sWord, 3) :
		   sWord.startsWith("qu") || sWord.startsWith("st") ? ay(sWord, 2) :
		   ay(sWord, 1);
}

private String ay(String sWord, int num)
{
	return sWord.substring(num, sWord.length()) + sWord.substring(0,num) + "ay";
}