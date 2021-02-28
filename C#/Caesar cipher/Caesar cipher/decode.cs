using System;

namespace Caesar_cipher
{
    public class decode
    {
        public string decoding(string input)
        {
            Console.Clear();
            Console.WriteLine("Caesar Decryption");
            Console.Write("Enter the shift value: ");
            int alphanum = 1;
            int shift = Int32.Parse(Console.ReadLine()) %26;
            shift = 26 - shift;
            string output = "";
            foreach (char character in input)
            {
                if ((character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z'))
                {
                    if (character >= 'a' && character <= 'z')
                    {
                        alphanum = (int) character - 97;
                        alphanum = (alphanum + shift) % 26;
                        alphanum += 97;
                    }
                    else
                    {
                        alphanum = (int) character - 65;
                        alphanum = (alphanum + shift) % 26;
                        alphanum += 65;
                    }
                    output += (char)alphanum;
                }
                else
                {
                    output += character;
                }
            }
            return output;
        }
    }
}