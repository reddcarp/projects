using System.Collections.Generic;

namespace Morse
{
    public class List2Tree
    {
        public Tree list2Tree(List<(char, string)> char2morse)
        {
            Tree arbreglobalAuto = new Tree(null,null,' ');
            Tree currentTree = arbreglobalAuto;
            int i = 0;
            int len = char2morse.Count;
            int j = 0;
            while (j<len)
            {
                (char,string) variable = char2morse[j];
                while (i < variable.Item2.Length)
                {
                    if (variable.Item2[i] == '.')
                    {
                        if (currentTree.right == null)
                        {
                            currentTree.right = new Tree(null, null, ' ');
                        }

                        currentTree = currentTree.right;
                    }
                    else
                    {
                        if (currentTree.left == null)
                        {
                            currentTree.left = new Tree(null, null, ' ');
                        }

                        currentTree = currentTree.left;
                    }
                    i += 1;
                }

                currentTree.key = variable.Item1;
                currentTree = arbreglobalAuto;
                i = 0;
                j += 1;
            }
            return arbreglobalAuto;
        }
    }
}