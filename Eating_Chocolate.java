/*
Eating chocolate problem: A and B starts eating a chocolate bar of size x. The participants can eat ith amount of the chocolate where i is the turn parameter, indicating ith bite.
A starts eating from the left while B starts eating from the right. Each participant takes turn to take a bite of ith size. A takes the first bite.
If the size of remaining chocolate bar is less than the required amount to be eaten by A or B in that turn, then they lose. The last participant to take a full bite wins.
The code displays the winner. 
*/

import java.util.Scanner;
class Eating_Chocolate{
    public static void main(String args[] ) throws Exception {
       
        Scanner sc = new Scanner(System.in);
        int x=sc.nextInt();   
        
        int i,j;
        for(j=1;j<=x;j++)
        {
            long n=sc.nextLong();
            int a; 
            double d=1+8*n;
            double p=Math.sqrt(d);
            double q=Math.floor((p-1)/2);
            a=(int)q;
            if(a%2==1)
                System.out.println("A");
            else
                System.out.println("B");            
        }
 
    }
}