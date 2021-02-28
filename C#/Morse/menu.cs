using System;
using System.IO;

namespace Morse
{
    public class menu
    {
        private ConsoleKey pressed = ConsoleKey.A;
        
        public (int,string,string) display()
        {
            string pathIn = "";
            string pathOut = "";
            Console.Clear();
            Console.WriteLine("Morse Code");
            do
            {
                Console.WriteLine("Enter the path to the Input text file: ");
                pathIn = Console.ReadLine();
            } while (!File.Exists(pathIn));
            Console.WriteLine();
            Console.WriteLine("Enter the path to the output text file: ");
            pathOut = Console.ReadLine();
            int choice = 1;
            while (pressed != ConsoleKey.Enter)
            {
                Console.Clear();
                Console.WriteLine("Morse Code");
                Console.WriteLine("Choose mode:");
                if (choice == 1)
                {
                    Console.WriteLine("    > Encode");
                    Console.WriteLine("    Decode");
                }
                else
                {
                    Console.WriteLine("    Encode");
                    Console.WriteLine("    > Decode");
                }

                pressed = Console.ReadKey().Key;
                if (pressed == ConsoleKey.UpArrow )
                    choice -= 1;
                if (pressed == ConsoleKey.DownArrow )
                    choice += 1;
                if (choice == 3)
                    choice = 1;
                if (choice == 0)
                    choice = 2;
            }
            return (choice,pathIn,pathOut);
        }
    }
}