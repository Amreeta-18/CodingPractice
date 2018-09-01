/*
For a input string S, we have to find the substring which on changing minimum number of characters will yield the word "barclays".
The code displays the starting index positions of the substring and the index positions of the characters that needed to be changed to get "barclays".
*/


import java.util.Scanner;
import java.io.BufferedReader;
import java.io.InputStreamReader;
 
class Find_Subword{
    public static void main(String args[] ) throws Exception {
 
        Scanner sc = new Scanner(System.in);
        String S = sc.nextLine();    
        String N = "barclays";
        int l = S.length();
        int i, c=0, j=0, min=999;
        int ind=0;
        char x, y;
        
        for(i=0; i<=(l-8);i++)
        {   
            c=0;
            String sub = S.substring(i, i+8);
            //System.out.println(sub);
            for(j=0; j<8;j++)
            {
                x=N.charAt(j);
                y=sub.charAt(j);
                if(x!=y)
                {
                 // System.out.println(x + " " + y);
                  c++;
                }
            }
            if(c<min)
            {
                min=c;
                ind=i;
               //System.out.println(min + " " + ind);
            }
        }
        System.out.println(min);
        String sub = S.substring(ind, ind+8);
        
        for(j=0; j<8;j++)
            {   
                y = sub.charAt(j);
                x = N.charAt(j);
                if(x!=y)
                {
                  
                 System.out.print((j+ind+1)+ " ");
                }
            }
    }
}