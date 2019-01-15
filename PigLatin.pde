public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
  boolean f = false;
  int x = -1;
  String[] b = new String[]{"a", "e", "i", "o", "u"};
  for (int i = 0; i < sWord.length(); i++)
  {
    for(int z = 0; z < b.length; z++)
    {
    if (sWord.substring(i, i+1).equals(b[z]))
    {
      x = i;
      f = true;
      break;
    }
    }
    if (f == true)
      break;
  }
  return x;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		int c = findFirstVowel(sWord);
		return(sWord.substring(c, sWord.length()) + sWord.substring(0, c) + "ay");
	}
}
