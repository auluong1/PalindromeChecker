public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(word).equals(reverse(onlyLetters(word)))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--) {
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public String onlyLetters(String str)
{
  String hi = new String();
  for(int i = 0; i < str.length(); i++) {
    if(Character.isLetter(str.charAt(i))) {
      hi = hi + str.substring(i,i+1); 
    }
  }
  String hii = "";
  for(int i = 0; i < hi.length(); i++) {
    if(hi.charAt(i) != ' ') {
      hii = hii + hi.charAt(i);
    }
  }
  hii = hii.toLowerCase();
  return hii;
}
