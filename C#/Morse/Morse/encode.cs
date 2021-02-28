using System;
using System.Collections.Generic;

namespace Morse
{
    // 1 espace entre code de lettres d'un même mot
    // 3 espace entre deux mots   
    public class encode
    {
        public string encoding(string input, List<(char, string)> char2morse)
        {
            Console.Clear();
            Console.WriteLine("Encoding done");
            bool alreadySpace = false;
            string output = "";
            char stock = ' ';
            int i = 0;
            string convert = null;
            foreach (char character in input)
            {
                convert = null;
                i = 0;
                stock = char.ToUpper(character);
                if (stock == ' ' || stock == '\n' || stock == '\r')
                {
                    if (alreadySpace)
                        convert = "";
                    else 
                        convert = "  ";
                    alreadySpace = true;
                }

                while (convert == null)
                {
                    alreadySpace = false;
                    if (char2morse[i].Item1 == stock)
                        convert = char2morse[i].Item2 + ' ';
                    else
                        i += 1;
                    if (i == char2morse.Count) //charactère non supporté
                    {
                        convert = stock + "";
                        Console.Error.WriteLine("The following character is not supported:  " + convert);
                    }
                }
                output += convert;
            }
            return output;
        }
    }
}