using System;
using System.Collections.Generic;
using System.Diagnostics.Tracing;
using System.IO;

namespace Morse
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            List<(char, string)> char2morse = new List<(char, string)>();
            char2morse.Add(item: ('0',"-----"));
            char2morse.Add(item: ('1',".----"));
            char2morse.Add(item: ('2',"..---"));
            char2morse.Add(item: ('3',"...--"));
            char2morse.Add(item: ('4',"....-"));
            char2morse.Add(item: ('5',"....."));
            char2morse.Add(item: ('6',"-...."));
            char2morse.Add(item: ('7',"--..."));
            char2morse.Add(item: ('8',"---.."));
            char2morse.Add(item: ('9',"----."));
            
            char2morse.Add(item: ('A',".-"));
            char2morse.Add(item: ('B',"-..."));
            char2morse.Add(item: ('C',"-.-."));
            char2morse.Add(item: ('D',"-.."));
            char2morse.Add(item: ('E',"."));
            char2morse.Add(item: ('F',"..-."));
            char2morse.Add(item: ('G',"--."));
            char2morse.Add(item: ('H',"...."));
            char2morse.Add(item: ('I',".."));
            char2morse.Add(item: ('J',".---"));
            char2morse.Add(item: ('K',"-.-"));
            char2morse.Add(item: ('L',".-.."));
            char2morse.Add(item: ('M',"--"));
            char2morse.Add(item: ('N',"-."));
            char2morse.Add(item: ('O',"---"));
            char2morse.Add(item: ('P',".--."));
            char2morse.Add(item: ('Q',"--.-"));
            char2morse.Add(item: ('R',".-."));
            char2morse.Add(item: ('S',"..."));
            char2morse.Add(item: ('T',"-"));
            char2morse.Add(item: ('U',"..-"));
            char2morse.Add(item: ('V',"...-"));
            char2morse.Add(item: ('W',".--"));
            char2morse.Add(item: ('X',"-..-"));
            char2morse.Add(item: ('Y',"-.--"));
            char2morse.Add(item: ('Z',"--.."));
            
            char2morse.Add(('É',"..-.."));
            
            char2morse.Add(item: ('.',".-.-.-"));
            char2morse.Add(item: ('?', "..--.."));
            char2morse.Add(item: ('\'', ".----."));
            char2morse.Add((',',"--..--"));
            char2morse.Add((';',"-.-.-."));
            char2morse.Add(('"',".-..-."));
            char2morse.Add((':',"---..."));
            char2morse.Add(('(',"-.--."));
            char2morse.Add((')',"-.--.-"));
            char2morse.Add(('-',"-....-"));
            char2morse.Add(('@',".--.-."));
            
            Tree arbreGlobal = new List2Tree().list2Tree(char2morse);
            string txtIn = "";
            string txtOut = "";
            
            (int choice,string pathIn,string pathOut) = new menu().display();

            using (StreamReader reader = new StreamReader(pathIn))
            {
                txtIn = reader.ReadToEnd();
            }

            if (choice == 1)
                txtOut = new encode().encoding(txtIn,char2morse);
            else
                txtOut = new decode().decoding(txtIn,arbreGlobal);

            using (StreamWriter writer = new StreamWriter(pathOut))
            {
                writer.Write(txtOut);
            }
        }
    }
}