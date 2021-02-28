using System.Collections.Generic;

namespace Morse
{
    //l'arbre 1 contient toutes les lettres commencant par .
    //l'arbre 2 contient toutes les lettres commencant par -
    //enfin left correspond au - et right au .
    public class Tree   
    {
        public Tree left;
        public Tree right;
        public char key;

        public Tree(Tree left, Tree right, char key)
        {
            this.left = left;
            this.right = right;
            this.key = key;
        }

    }
}