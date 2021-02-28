using System;

namespace Morse
{
    public class decode
    {
        // 1 espace entre code de lettres d'un même mot
        // 3 espace entre deux mots   
        public string decoding(string txtIn, Tree arbre)
        {
            Console.Clear();
            Console.WriteLine("Decoding done");
            int i = 0;
            int len = txtIn.Length;
            Tree current = arbre;
            string txtOut = "";
            while (i < len)
            {
                while (i < len && txtIn[i] != ' ')
                {
                    if (txtIn[i] == '.')
                        current = current.right;
                    else
                        current = current.left;
                    i += 1;
                }
                txtOut += current.key;
                current = arbre;
                i += 1;
                if (i < len && txtIn[i] == ' ')
                {
                    i += 1;
                }
                
            }
            return txtOut;
        }
    }
}