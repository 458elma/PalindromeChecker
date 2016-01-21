public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String itty = "";
  for(int i  = 0; i<word.length(); i++) {
    if(Character.isLetter(word.charAt(i))) {
      itty = itty + word.substring(i,i+1).toLowerCase();
    }
  }
  
  for(int i = 0;i <= itty.length()/2; i++) {
      if(itty.charAt(itty.length()-1-i) != itty.charAt(i)) {
        return false;
      }   
  }
  return true;
}
