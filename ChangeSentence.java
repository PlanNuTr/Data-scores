package inputSentence;
 
import java.util.Scanner;
 
public class ChangeSentence {
	public static void main (String [] args){
		
		System.out.print("Input Sentence: ");
		Scanner sc = new Scanner(System.in);
		String sen = sc.nextLine();
		
		sen = sen.replaceAll("a","");
		sen = sen.replaceAll("A","");
		sen = sen.replaceAll(",","");
		sen.toLowerCase();
		sen = sen.substring(0, 1).toUpperCase() + sen.substring(1);
		
		for(int i = 0; i < sen.length(); i++){
			if(sen.charAt(i) == ' '){
	            char c = Character.toUpperCase(sen.charAt(i+1));
	            sen = sen.substring(0, i+1) + c + sen.substring(i+2);
	        }
		}
		
		System.out.println(sen);
	}
 
}