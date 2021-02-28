using System;
using System.IO;

namespace Caesar_cipher
{
  internal class Program
  {
    public static void Main(string[] args)
    {
      //string pathIn = args[0];
      //string pathOut = args[1];
     string textIn = "";
     string textOut = "";

      (int choice,string pathIn,string  pathOut) = new menu().display();
      
      using (StreamReader reader = new StreamReader(pathIn))
      {
        textIn = reader.ReadToEnd();
      }
      
      if (choice == 1)
        textOut = new encode().encoding(textIn);
      else
        textOut = new decode().decoding(textIn);
      
      using (StreamWriter writer = new StreamWriter(pathOut))
      {
          writer.Write(textOut);
      }
    }
  }
}