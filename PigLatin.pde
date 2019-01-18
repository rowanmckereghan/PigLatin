public void setup() 
{
	int x = 0;
	String[] lines = loadStrings("LowellHymn.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0; i < lines.length; i++) 
	{
		for(int z = 0; z < findReturn(lines, 0); z++)
	 		System.out.println(pigLatin(lines[i].substring(z, findPunctuation(lines[i], z))));
	}
}
public void draw()
{
        //not used
}
public int getNum(int x)
{
	return x;
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

public int findPunctuation(String r, int c)
{
	String[] f = new String[]{" ", ",", "."};
	int v = -1;
	for(int h = c; h < r.length(); h++)
	{
		if(r.substring(h, h+1).equals(f))
		{
			v = h;
			break;
		}
	}
	return v;
}
public int findReturn(String l[], int k)
{
	int h = -1;
	for (int v = k; v < l.length; v++)
	if (l.substring(v, v+1).equals("\n"))
	{
		h = v;
		break;
	}
	return h;
}

public string findReturn2(String l[], int k)
{
	int h = -1;
	for (int v = k; v < l.length; v++)
	if (l.substring(v, v+1).equals("\n"))
	{
		h = v;
		break;
	}
	return l.substring(k, h);
}
